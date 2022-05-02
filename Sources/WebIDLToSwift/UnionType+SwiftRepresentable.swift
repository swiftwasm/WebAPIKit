import Foundation
import WebIDL

extension String {
    var lowerCamelCased: String {
        let prefix = prefix(while: \.isUppercase)
        if prefix.count <= 1 {
            return prefix.lowercased() + dropFirst(prefix.count)
        } else {
            return prefix.dropLast().lowercased() + dropFirst(prefix.count - 1)
        }
    }
}

extension UnionType: SwiftRepresentable {
    var sortedTypes: [SlimIDLType] {
        types.sorted(by: { $0.inlineTypeName < $1.inlineTypeName })
    }

    var name: String {
        friendlyName ?? defaultName
    }

    var sortedNames: [String] {
        sortedTypes.map(\.inlineTypeName.lowerCamelCased)
    }

    var swiftRepresentation: SwiftSource {
        """
        public protocol Any_\(name): ConvertibleToJSValue {}
        \(lines: extensions)

        public enum \(name): JSValueCompatible, Any_\(name) {
            \(lines: cases)

            \(lines: accessors)

            public static func construct(from value: JSValue) -> Self? {
                \(lines: constructors)
                return nil
            }

            public var jsValue: JSValue {
                switch self {
                    \(lines: exporters)
                }
            }
        }
        """
    }

    var extensions: [SwiftSource] {
        sortedTypes.map {
            "extension \($0.typeName): Any_\(name) \($0.whereClause) {}"
        }
    }

    var cases: [SwiftSource] {
        zip(sortedTypes, sortedNames).map { type, name in
            "case \(name)(\(type))"
        }
    }

    var accessors: [SwiftSource] {
        zip(sortedTypes, sortedNames).map { type, name in
            """
            var \(name): \(type)? {
                switch self {
                case let .\(name)(\(name)): return \(name)
                default: return nil
                }
            }
            """
        }
    }

    var constructors: [SwiftSource] {
        zip(sortedTypes, sortedNames).map { type, name in
            """
            if let \(name): \(type) = value.fromJSValue() {
                return .\(name)(\(name))
            }
            """
        }
    }

    var exporters: [SwiftSource] {
        sortedNames.map { name in
            """
            case let .\(name)(\(name)):
                return \(name).jsValue
            """
        }
    }
}

extension SlimIDLType: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        if nullable {
            return "\(value)?"
        }
        return "\(value)"
    }

    var typeName: SwiftSource {
        if nullable {
            return "Optional"
        }

        return "\(value.typeName)"
    }

    var whereClause: SwiftSource {
        if whereClauses.isEmpty {
            return ""
        }
        return "where \(sequence: whereClauses)"
    }

    private var whereClauses: [SwiftSource] {
        if nullable {
            return ["Wrapped == \(value)"]
        }
        switch value {
        case let .generic(name, args: args):
            switch name {
            case "sequence":
                return ["Element == \(args[0])"]
            case "FrozenArray", "ObservableArray":
                // ???
                return ["Element == \(args[0])"]
            case "Promise":
                return []
            case "record":
                return ["Key == \(args[0])", "Value == \(args[1])"]
            default:
                fatalError("Unsupported generic type: \(name)")
            }
        case .single:
            return []
        case .union:
            fatalError("Union types cannot be used directly")
        }
    }
}

extension SlimIDLType.TypeValue: SwiftRepresentable {
    var typeName: SwiftSource {
        switch self {
        case let .generic(name, _):
            switch name {
            case "sequence":
                return "Array"
            case "FrozenArray", "ObservableArray":
                // ???
                return "Array"
            case "Promise":
                return "JSPromise"
            case "record":
                return "Dictionary"
            default:
                fatalError("Unsupported generic type: \(name)")
            }
        case let .single(name):
            if let typeName = IDLType.typeNameMap[name] {
                return "\(typeName)"
            } else {
                if name == name.lowercased() {
                    fatalError("Unsupported type: \(name)")
                }
                return "\(name)"
            }
        case let .union(types):
            return "\(unionName(types: types))"
        }
    }

    var swiftRepresentation: SwiftSource {
        switch self {
        case let .generic(name, args: args):
            switch name {
            case "sequence":
                return "[\(args[0])]"
            case "FrozenArray", "ObservableArray":
                // ???
                return "[\(args[0])]"
            case "Promise":
                return "JSPromise"
            case "record":
                return "[\(args[0]): \(args[1])]"
            default:
                fatalError("Unsupported generic type: \(name)")
            }
        case let .single(name):
            if let typeName = IDLType.typeNameMap[name] {
                return "\(typeName)"
            } else {
                if name == name.lowercased() {
                    fatalError("Unsupported type: \(name)")
                }
                return "\(name)"
            }
        case let .union(types):
            return "\(unionName(types: types))"
        }
    }
}

func unionName(types: Set<SlimIDLType>) -> String {
    let union = Context.unions.first(where: { $0.types == types }) ?? UnionType(types: types)
    Context.unions.insert(union)
    return union.name
}
