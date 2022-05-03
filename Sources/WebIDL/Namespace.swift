/// https://github.com/w3c/webidl2.js#namespace
public struct IDLNamespace: IDLNode, IDLNamed {
    public static let type = "namespace"
    public let name: String
    public let partial: Bool
    public let members: GenericCollection<IDLNamespaceMember>
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}

public protocol IDLNamespaceMember: IDLNode {}
extension IDLAttribute: IDLNamespaceMember {}
extension IDLConstant: IDLNamespaceMember {}
extension IDLOperation: IDLNamespaceMember {}
