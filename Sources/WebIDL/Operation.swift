public struct IDLOperation: IDLNode {
    public static let type = "operation"
    public let special: String
    public let idlType: IDLType
    public let name: String
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]
}
