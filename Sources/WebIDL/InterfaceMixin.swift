public struct IDLInterfaceMixin: IDLNode {
    public static let type = "interface mixin"
    public let name: String
    public let partial: Bool
    public let members: GenericCollection<IDLInterfaceMixinMember>
    public let extAttrs: [IDLExtendedAttribute]
}

public protocol IDLInterfaceMixinMember: IDLNode {}
extension IDLAttribute: IDLInterfaceMixinMember {}
extension IDLConstant: IDLInterfaceMixinMember {}
extension IDLOperation: IDLInterfaceMixinMember {}
