/// Default and Const Values
public enum IDLValue: Hashable, Decodable {
    case string(String)
    case number(String)
    case boolean(Bool)
    case null
    case infinity(negative: Bool)
    case nan
    case sequence
    case dictionary

    private enum CodingKeys: String, CodingKey {
        case type
        case value
        case negative
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        switch type {
        case "string":
            self = .string(try container.decode(String.self, forKey: .value))
        case "number":
            self = .number(try container.decode(String.self, forKey: .value))
        case "boolean":
            self = .boolean(try container.decode(Bool.self, forKey: .value))
        case "null":
            self = .null
        case "infinity":
            self = .infinity(negative: try container.decode(Bool.self, forKey: .negative))
        case "nan":
            self = .nan
        case "sequence":
            self = .sequence
        case "dictionary":
            self = .dictionary
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: container.codingPath,
                    debugDescription: "Unknown value type: \(type)"
                )
            )
        }
    }
}
