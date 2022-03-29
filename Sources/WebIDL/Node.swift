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

struct IDLNodeDecoder: Decodable {
    let node: IDLNode
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: TypeKey.self)
        let type = try container.decode(String.self, forKey: .type)
        guard let idlType = idlTypes[type] else {
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: container.codingPath,
                    debugDescription: "Unknown type: \(type)"
                )
            )
        }

        node = try idlType.init(from: decoder)
    }
}
