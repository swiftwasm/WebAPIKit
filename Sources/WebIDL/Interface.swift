/// https://github.com/w3c/webidl2.js#interface
public struct IDLInterface: IDLNode, IDLNamed {
    public static let type = "interface"
    public let name: String
    public let partial: Bool
    public let members: GenericCollection<IDLInterfaceMember>
    public let inheritance: String?
    public let extAttrs: [IDLExtendedAttribute]

    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}

/// https://github.com/w3c/webidl2.js#callback-interfaces
public struct IDLCallbackInterface: IDLNode, IDLNamed {
    public static let type = "callback interface"
    public let name: String
    public let partial: Bool
    public let members: GenericCollection<IDLInterfaceMember>
    public let inheritance: String?
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}

public protocol IDLInterfaceMember: IDLNode {}

extension IDLAttribute: IDLInterfaceMember {}
extension IDLConstant: IDLInterfaceMember {}
extension IDLConstructor: IDLInterfaceMember {}
// added on definition because of Swift limitation
// extension IDLDeclaration: IDLInterfaceMember {}
extension IDLOperation: IDLInterfaceMember {}
