import WebIDL

func merge(declarations: [IDLNode]) -> (declarations: [DeclarationFile], interfaces: [String: MergedInterface]) {
    let byType: [String: [IDLNode]] = declarations.reduce(into: [:]) { partialResult, node in
        partialResult[type(of: node).type, default: []].append(node)
    }
    // let byName: [String?: [IDLNode]] = declarations.reduce(into: [:]) { partialResult, node in
    //     let name = Mirror(reflecting: node).children.first { $0.label == "name" }?.value as? String
    //     partialResult[name, default: []].append(node)
    // }
    // print(byName.filter { $0.value.count > 1 }.map { "\($0.key ?? "<nil>"): \($0.value.map { type(of: $0).type }))" }.joined(separator: "\n"))
    // ["interface mixin", "interface", "includes"]

    func all<T: IDLNode>(_: T.Type) -> [T] {
        byType[T.type]!.map { $0 as! T }
    }

    let mixins = Dictionary(all(IDLInterfaceMixin.self).map {
        ($0.name, MergedMixin(name: $0.name, members: $0.members.array as! [IDLInterfaceMixinMember]))
    }, uniquingKeysWith: {
        MergedMixin(name: $0.name, members: $0.members + $1.members)
    })
    print("unhandled mixins", mixins.map(\.key))

    let mergedInterfaces = Dictionary(all(IDLInterface.self).map {
        ($0.name, MergedInterface(
            name: $0.name,
            inheritance: [$0.inheritance].compactMap { $0 },
            members: $0.members.array as! [IDLInterfaceMember]
        ))
    }, uniquingKeysWith: {
        MergedInterface(name: $0.name, inheritance: $0.inheritance + $1.inheritance, members: $0.members + $1.members)
    })

    let mergedDictionaries = Dictionary(all(IDLDictionary.self).map {
        ($0.name, MergedDictionary(
            name: $0.name,
            inheritance: [$0.inheritance].compactMap { $0 },
            members: $0.members
        ))
    }, uniquingKeysWith: {
        MergedDictionary(name: $0.name, inheritance: $0.inheritance + $1.inheritance, members: $0.members + $1.members)
    })

    print("unhandled callback interfaces", all(IDLCallbackInterface.self).map(\.name))
    return (
        Array(mergedInterfaces.values) + Array(mergedDictionaries.values)
            + [Typedefs(typedefs: all(IDLTypedef.self) + all(IDLCallback.self))]
            + all(IDLEnum.self)
            + all(IDLNamespace.self),
        mergedInterfaces
    )
}

protocol DeclarationFile {}

extension IDLEnum: DeclarationFile {}
extension IDLNamespace: DeclarationFile {}

struct MergedMixin {
    let name: String
    var members: [IDLInterfaceMixinMember]
}

struct MergedDictionary: DeclarationFile {
    let name: String
    var inheritance: [String]
    var members: [IDLDictionary.Member]
}

struct MergedInterface: DeclarationFile {
    let name: String
    var inheritance: [String]
    var members: [IDLInterfaceMember]
}

struct Typedefs: DeclarationFile, SwiftRepresentable {
    let name = "Typedefs"
    let typedefs: [IDLNode]

    var swiftRepresentation: SwiftSource {
        "\(lines: typedefs.map(toSwift))"
    }
}
