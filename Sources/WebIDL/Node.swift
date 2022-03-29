public protocol IDLNode: Decodable {
    static var type: String { get }
    var extAttrs: [IDLExtendedAttribute] { get }
}

var idlTypes: [String: IDLNode.Type] = [
    "argument": IDLArgument.self,
    "attribute": IDLAttribute.self,
    "callback": IDLCallback.self,
    "const": IDLConstant.self,
    "constructor": IDLConstructor.self,
    "maplike": IDLMapLikeDeclaration.self,
    "setlike": IDLSetLikeDeclaration.self,
    "iterable": IDLIterableDeclaration.self,
    "dictionary": IDLDictionary.self,
    "enum": IDLEnum.self,
    "includes": IDLIncludes.self,
    "interface": IDLInterface.self,
    "interface mixin": IDLInterfaceMixin.self,
    "operation": IDLOperation.self,
    "typedef": IDLTypedef.self,
]

private enum TypeKey: String, CodingKey {
    case type
}

extension Decoder {
    func decodeIDLNode() throws -> IDLNode {
        try container(keyedBy: TypeKey.self).decodeIDLNode()
    }
}

extension UnkeyedDecodingContainer {
    mutating func decodeIDLNode() throws -> IDLNode {
        try nestedContainer(keyedBy: TypeKey.self).decodeIDLNode()
    }
}

private extension KeyedDecodingContainer where Key == TypeKey {
    func decodeIDLNode() throws -> IDLNode {
        let type = try decode(String.self, forKey: .type)
        guard let idlType = idlTypes[type] else {
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: self,
                debugDescription: "Unknown IDL type: \(type)"
            )
        }

        return try idlType.init(from: superDecoder())
    }
}
