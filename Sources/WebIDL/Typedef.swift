public struct IDLTypedef: IDLNode {
    public static let type = "typedef"
    public let name: String
    public let idlType: IDLType
    public let extAttrs: [IDLExtendedAttribute]
}
