/// https://github.com/w3c/webidl2.js#iterable-async-iterable-maplike-and-setlike-declarations
public protocol IDLDeclaration: IDLNode, IDLInterfaceMember {
    var idlType: [IDLType] { get }
    var arguments: [IDLArgument] { get }
}

public struct IDLMapLikeDeclaration: IDLDeclaration {
    public static let type = "maplike"
    public let idlType: [IDLType]
    public let readonly: Bool
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}

public struct IDLSetLikeDeclaration: IDLDeclaration {
    public static let type = "setlike"
    public let idlType: [IDLType]
    public let readonly: Bool
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}

public struct IDLIterableDeclaration: IDLDeclaration {
    public static let type = "iterable"
    public let idlType: [IDLType]
    public let async: Bool
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}
