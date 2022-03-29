public struct IDLConstructor: IDLNode {
    public static let type = "constructor"
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]
}
