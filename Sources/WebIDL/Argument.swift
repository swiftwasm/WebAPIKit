/// https://github.com/w3c/webidl2.js/#arguments
public struct IDLArgument: IDLNode {
    public static let type = "argument"
    public let `default`: IDLValue?
    public let optional: Bool
    public let variadic: Bool
    public let idlType: IDLType
    public let name: String
    public let extAttrs: [IDLExtendedAttribute]
}
