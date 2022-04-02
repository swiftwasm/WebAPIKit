import WebIDL

struct SlimIDLType: Hashable, Encodable {
    let value: TypeValue
    let nullable: Bool

    func hash(into hasher: inout Hasher) {
        hasher.combine(inlineTypeName)
    }

    static func == (lhs: SlimIDLType, rhs: SlimIDLType) -> Bool {
        lhs.inlineTypeName == rhs.inlineTypeName
    }

    init(_ type: IDLType) {
        value = .init(type.value)
        nullable = type.nullable
    }

    var inlineTypeName: String {
        if nullable {
            return "nullable_\(value.inlineTypeName)"
        }

        return value.inlineTypeName
    }

    enum TypeValue: Encodable {
        case generic(String, args: [SlimIDLType])
        case single(String)
        case union([SlimIDLType])

        init(_ value: IDLType.TypeValue) {
            switch value {
            case let .generic(name, args):
                self = .generic(name, args: args.map(SlimIDLType.init))
            case let .single(name):
                self = .single(name)
            case let .union(types):
                let slimmed = types.map(SlimIDLType.init)
                self = .union(slimmed)
                Context.unions.insert(Set(slimmed))
            }
        }
    }
}

extension Set where Element == SlimIDLType {
    var inlineTypeName: String {
        map(\.inlineTypeName).sorted().joined(separator: "_or_")
    }
}

extension SlimIDLType.TypeValue {
    var inlineTypeName: String {
        switch self {
        case let .generic(name, args):
            switch name {
            case "sequence":
                return "seq_of_\(args[0].inlineTypeName)"
            case "FrozenArray", "ObservableArray":
                // ???
                return "\(name)_of_\(args[0].inlineTypeName)"
            case "Promise":
                return "JSPromise"
            case "record":
                return "record_\(args[0].inlineTypeName)_to_\(args[1].inlineTypeName)"
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
            return Set(types).inlineTypeName
        }
    }
}
