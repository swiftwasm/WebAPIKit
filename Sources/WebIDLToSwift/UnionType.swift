import WebIDL

class UnionType: Hashable, Equatable {
    let types: Set<SlimIDLType>
    var friendlyName: String?
    let defaultName: String

    init(types: Set<SlimIDLType>, friendlyName: String? = nil) {
        self.types = types
        self.friendlyName = friendlyName
        defaultName = types.map(\.inlineTypeName).sorted().joined(separator: "_or_")
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(defaultName)
    }

    static func == (lhs: UnionType, rhs: UnionType) -> Bool {
        lhs.types == rhs.types
    }
}

struct SlimIDLType: Hashable, Encodable {
    let value: TypeValue
    let nullable: Bool
    let inlineTypeName: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(inlineTypeName)
    }

    static func == (lhs: SlimIDLType, rhs: SlimIDLType) -> Bool {
        lhs.inlineTypeName == rhs.inlineTypeName
    }

    init(_ type: IDLType) {
        let value = TypeValue(type.value)
        self.value = value
        nullable = type.nullable
        
        if type.nullable {
            inlineTypeName = "nullable_\(value.inlineTypeName)"
        } else {
            inlineTypeName = value.inlineTypeName
        }
    }

    enum TypeValue: Encodable {
        case generic(String, args: [SlimIDLType])
        case single(String)
        case union(Set<SlimIDLType>)

        init(_ value: IDLType.TypeValue) {
            switch value {
            case let .generic(name, args):
                self = .generic(name, args: args.map(SlimIDLType.init))
            case let .single(name):
                self = .single(name)
            case let .union(types):
                let slimmed = Set(types.map(SlimIDLType.init))
                self = .union(slimmed)
            }
        }
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
            return unionName(types: types)
        }
    }
}
