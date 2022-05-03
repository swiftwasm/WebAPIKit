public struct IDLInterfaceMixin: IDLNode, IDLNamed {
    public static let type = "interface mixin"
    public let name: String
    public let partial: Bool
    public let members: GenericCollection<IDLInterfaceMixinMember>
    public let extAttrs: [IDLExtendedAttribute]
    public func accept<V>(visitor: inout V) where V : IDLDeclVisitor {
        visitor.visit(self)
    }
}

public protocol IDLInterfaceMixinMember: IDLNode, IDLNamed {}
extension IDLAttribute: IDLInterfaceMixinMember {}
extension IDLConstant: IDLInterfaceMixinMember {}
extension IDLOperation: IDLInterfaceMixinMember {}
