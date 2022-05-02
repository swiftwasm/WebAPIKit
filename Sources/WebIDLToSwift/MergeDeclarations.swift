import WebIDL

enum DeclarationMerger {
    static let ignoredTypedefs: Set<String> = [
        "Function",
        "AudioWorkletProcessorConstructor",
        "CustomElementConstructor",
        "ArrayBufferView",
        "RotationMatrixType",
    ]
    static let validExposures: Set<String> = ["Window"]

    static let ignoredParents: Set<String> = ["LinkStyle"]

    private static func addAsync(_ members: [IDLNode]) -> [IDLNode] {
        members.flatMap { member -> [IDLNode] in
            if let operation = member as? IDLOperation,
               case .generic("Promise", _) = operation.idlType?.value
            {
                return [member, AsyncOperation(operation: operation)]
            } else {
                return [member]
            }
        }
    }

    static func merge(declarations: [IDLNode]) -> MergeResult {
        let byType: [String: [IDLNode]] = declarations.reduce(into: [:]) { partialResult, node in
            partialResult[type(of: node).type, default: []].append(node)
        }

        let missedTypes = Set(declarations.map { type(of: $0).type })
            .symmetricDifference([
                IDLInterfaceMixin.type,
                IDLInterface.type,
                IDLDictionary.type,
                IDLCallbackInterface.type,
                IDLIncludes.type,
                IDLEnum.type, IDLNamespace.type,
                IDLTypedef.type, IDLCallback.type,
            ])
        if !missedTypes.isEmpty {
            print("missed types!", missedTypes)
        }
        // let byName: [String?: [IDLNode]] = declarations.reduce(into: [:]) { partialResult, node in
        //     let name = Mirror(reflecting: node).children.first { $0.label == "name" }?.value as? String
        //     partialResult[name, default: []].append(node)
        // }
        // print(byName.filter { $0.value.count > 1 }.map { "\($0.key ?? "<nil>"): \($0.value.map { type(of: $0).type }))" }.joined(separator: "\n"))

        func all<T: IDLNode>(_: T.Type) -> [T] {
            byType[T.type]?.map { $0 as! T } ?? []
        }

        let mixins = Dictionary(grouping: all(IDLInterfaceMixin.self), by: \.name)
            .mapValues {
                return MergedMixin(
                    name: $0.first!.name,
                    partial: $0.reduce(true) { $0 && $1.partial },
                    members: $0.flatMap { addAsync($0.members.array) as! [IDLInterfaceMixinMember] })
            }

        let includes = Dictionary(grouping: all(IDLIncludes.self)) { $0.target }
            .mapValues { $0.map(\.includes).filter { !Self.ignoredParents.contains($0) } }

        let mergedInterfaces = Dictionary(
            grouping: all(IDLInterface.self).map {
                MergedInterface(
                    name: $0.name,
                    parentClasses: [$0.inheritance]
                        .compactMap { $0 }
                        .filter { !Self.ignoredParents.contains($0) },
                    members: addAsync($0.members.array) as! [IDLInterfaceMember],
                    exposed: Set(
                        $0.extAttrs
                            .filter { $0.name == "Exposed" }
                            .flatMap { $0.rhs?.identifiers ?? [] }
                    ),
                    exposedToAll: $0.extAttrs.contains { $0.name == "Exposed" && $0.rhs == .wildcard }
                )
            },
            by: \.name
        ).mapValues { toMerge -> MergedInterface in
            var interface = toMerge.dropFirst().reduce(into: toMerge.first!) { partialResult, interface in
                partialResult.parentClasses += interface.parentClasses
                partialResult.members += interface.members
                partialResult.exposed.formUnion(interface.exposed)
                partialResult.exposedToAll = partialResult.exposedToAll || interface.exposedToAll
            }
            interface.mixins = includes[interface.name, default: []]
            if let decl = interface.members.first(where: { $0 is IDLIterableDeclaration }) as? IDLIterableDeclaration {
                interface.mixins.append(decl.async ? "AsyncSequence" : "Sequence")
            }
            return interface
        }.filter { $0.value.exposedToAll || $0.value.exposed.contains(where: validExposures.contains) }

        let mergedDictionaries = Dictionary(
            grouping: all(IDLDictionary.self).map {
                MergedDictionary(
                    name: $0.name,
                    inheritance: [$0.inheritance]
                        .compactMap { $0 }
                        .filter { !Self.ignoredParents.contains($0) },
                    members: $0.members
                )
            },
            by: \.name
        ).mapValues { toMerge -> MergedDictionary in
            var dict = toMerge.dropFirst().reduce(into: toMerge.first!) { partialResult, interface in
                partialResult.inheritance += interface.inheritance
                partialResult.members += interface.members
            }
            dict.inheritance += includes[dict.name, default: []]
            return dict
        }

        let mergedNamespaces = Dictionary(
            grouping: all(IDLNamespace.self).map {
                MergedNamespace(
                    name: $0.name,
                    members: addAsync($0.members.array) as! [IDLNamespaceMember]
                )
            },
            by: \.name
        ).mapValues {
            $0.dropFirst().reduce(into: $0.first!) { partialResult, namespace in
                partialResult.members += namespace.members
            }
        }

        print("unhandled callback interfaces", all(IDLCallbackInterface.self).map(\.name))

        var allTypes: [IDLTypealias] = all(IDLTypedef.self) + all(IDLCallback.self)
        allTypes.removeAll(where: { ignoredTypedefs.contains($0.name) })
        let mergedTypes = Dictionary(uniqueKeysWithValues: allTypes.map { ($0.name, $0) })

        // var unionAliases: [String: String] = [:]
        // let unions = Set(
        //     Dictionary(
        //         all(IDLTypedef.self).compactMap { type -> (Set<SlimIDLType>, UnionType)? in
        //             if case let .union(types) = type.idlType.value {
        //                 let typeSet = Set(types.map(SlimIDLType.init))
        //                 return (typeSet, UnionType(types: typeSet, friendlyName: type.name))
        //             }
        //             return nil
        //         },
        //         uniquingKeysWith: { old, new in
        //             unionAliases[new.name] = old.name
        //             return old
        //         }
        //     ).values
        // )

        // print(unionAliases)

        let arrays: [DeclarationFile] =
            Array(mergedInterfaces.values)
                + Array(mergedDictionaries.values)
                + Array(mixins.values)
                + Array(mergedNamespaces.values)
        return MergeResult(
            declarations: arrays
                + [Typedefs(typedefs: allTypes)]
                + all(IDLEnum.self),
            interfaces: mergedInterfaces,
            types: mergedTypes
            // unions: unions
        )
    }

    struct MergeResult {
        let declarations: [DeclarationFile]
        let interfaces: [String: MergedInterface]
        let types: [String: IDLTypealias]
        // let unions: Set<UnionType>
    }
}

protocol DeclarationFile {
    var name: String { get }
}

extension IDLEnum: DeclarationFile {}

struct AsyncOperation: IDLNode, IDLNamespaceMember, IDLInterfaceMember, IDLInterfaceMixinMember, IDLNamed {
    static var type: String { "" }
    var extAttrs: [IDLExtendedAttribute] { operation.extAttrs }
    var name: String { operation.name }
    let operation: IDLOperation
    var returnType: IDLType {
        guard case let .generic("Promise", values) = operation.idlType?.value else {
            print(operation)
            fatalError("Return type of async function \(name) is not a Promise")
        }
        return values.first!
    }
}

struct MergedNamespace: DeclarationFile {
    let name: String
    var members: [IDLNamespaceMember]
}

struct MergedMixin: DeclarationFile {
    let name: String
    let partial: Bool
    var members: [IDLInterfaceMixinMember]
}

struct MergedDictionary: DeclarationFile {
    let name: String
    var inheritance: [String]
    var members: [IDLDictionary.Member]
}

struct MergedInterface: DeclarationFile {
    let name: String
    var parentClasses: [String]
    var mixins: [String] = []
    var members: [IDLInterfaceMember]
    var exposed: Set<String>
    var exposedToAll: Bool
}

struct Typedefs: DeclarationFile, SwiftRepresentable {
    let name = "Typedefs"
    let typedefs: [IDLTypealias]

    var swiftRepresentation: SwiftSource {
        "\(lines: typedefs.filter { !DeclarationMerger.ignoredTypedefs.contains($0.name) }.map(toSwift))"
    }
}

protocol IDLTypealias: IDLNode, IDLNamed {
    var idlType: IDLType { get }
}

extension IDLCallback: IDLTypealias {}
extension IDLTypedef: IDLTypealias {}
