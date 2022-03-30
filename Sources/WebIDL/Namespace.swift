/// https://github.com/w3c/webidl2.js#namespace
public struct IDLNamespace: IDLNode, IDLNamed {
    public static let type = "namespace"
    public let name: String
    public let partial: Bool
    public let members: GenericCollection<IDLNamespaceMember>
    public let extAttrs: [IDLExtendedAttribute]
}

public protocol IDLNamespaceMember: IDLNode {}
extension IDLAttribute: IDLNamespaceMember {}
extension IDLConstant: IDLNamespaceMember {}
extension IDLOperation: IDLNamespaceMember {}
