public protocol IDLNode: Decodable {
    static var type: String { get }
    var extAttrs: [IDLExtendedAttribute] { get }

    func accept<V: IDLDeclVisitor>(visitor: inout V)
}

public protocol IDLNamed {
    var name: String { get }
}

var idlTypes: [String: IDLNode.Type] = [
    "argument": IDLArgument.self,
    "attribute": IDLAttribute.self,
    "callback": IDLCallback.self,
    "callback interface": IDLCallbackInterface.self,
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
    "namespace": IDLNamespace.self,
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

public protocol IDLDeclVisitor {
    mutating func visit(_ interface: IDLInterface)
    mutating func visit(_ interfaceMixin: IDLInterfaceMixin)
    mutating func visit(_ include: IDLIncludes)
    mutating func visit(_ callback: IDLCallback)
    mutating func visit(_ callbackInterface: IDLCallbackInterface)
    mutating func visit(_ typedef: IDLTypedef)
    mutating func visit(_ operation: IDLOperation)
    mutating func visit(_ constructor: IDLConstructor)
    mutating func visit(_ enum: IDLEnum)
    mutating func visit(_ argument: IDLArgument)
    mutating func visit(_ constant: IDLConstant)
    mutating func visit(_ attribute: IDLAttribute)
    mutating func visit(_ dictionary: IDLDictionary)
    mutating func visit(_ namespace: IDLNamespace)
    mutating func visit(_ iterableDecl: IDLIterableDeclaration)
    mutating func visit(_ setLikeDecl: IDLSetLikeDeclaration)
    mutating func visit(_ mapLikeDecl: IDLMapLikeDeclaration)
    mutating func visit(_ rawNode: IDLNode)
}

public extension IDLDeclVisitor {
    mutating func visitRoot(_ node: IDLNode) {
        node.accept(visitor: &self)
    }
}

public extension IDLNode {
    func accept<V: IDLDeclVisitor>(visitor: inout V) {
        visitor.visit(self)
    }
}
