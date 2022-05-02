/// https://github.com/w3c/webidl2.js/#dictionary
public struct IDLDictionary: IDLNode, IDLNamed {
    public static let type = "dictionary"
    public let name: String
    public let partial: Bool
    public let members: [Member]
    public let inheritance: String?
    public let extAttrs: [IDLExtendedAttribute]

    public struct Member: IDLNode, IDLNamed {
        public static let type = "field"
        public let name: String
        public let required: Bool
        public let idlType: IDLType
        public let extAttrs: [IDLExtendedAttribute]
        public let `default`: IDLValue?
    }
}
