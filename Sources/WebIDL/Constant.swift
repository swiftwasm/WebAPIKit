public struct IDLConstant: IDLNode, IDLNamed {
    public static let type = "const"
    public let name: String
    public let idlType: IDLType
    public let value: IDLValue
    public let extAttrs: [IDLExtendedAttribute]
}
