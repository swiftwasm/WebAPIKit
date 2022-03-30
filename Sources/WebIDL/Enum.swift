public struct IDLEnum: IDLNode, IDLNamed {
    public static let type = "enum"
    public let name: String
    private let values: [Value]
    public var cases: [String] { values.map(\.value) }
    public let extAttrs: [IDLExtendedAttribute]

    private struct Value: Decodable {
        let value: String
    }
}
