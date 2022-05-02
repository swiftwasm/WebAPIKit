/// https://github.com/w3c/webidl2.js#callback
public struct IDLCallback: IDLNode, IDLNamed {
    public static let type = "callback"
    public let name: String
    public let idlType: IDLType
    public let arguments: [IDLArgument]
    public let extAttrs: [IDLExtendedAttribute]
}
