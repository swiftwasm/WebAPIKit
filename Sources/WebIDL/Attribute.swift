public struct IDLAttribute: IDLNode, IDLNamed {
    public static let type = "attribute"
    public let name: String
    public let special: String
    public let readonly: Bool
    public let idlType: IDLType
    public let extAttrs: [IDLExtendedAttribute]
}
