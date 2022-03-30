/// https://github.com/w3c/webidl2.js/#extended-attributes
public struct IDLExtendedAttribute: Decodable, IDLNamed {
    public let name: String
    public let arguments: [IDLArgument]
    public let rhs: RHS?

    public enum RHS: Decodable {
        case identifier(String)
        case identifierList([String])
        case string(String)
        case stringList([String])
        case decimal(String)
        case decimalList([String])
        case integer(String)
        case integerList([String])
        case wildcard

        private enum CodingKeys: String, CodingKey {
            case type
            case value
        }

        private struct ValueContainer: Decodable {
            let value: String
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let type = try container.decode(String.self, forKey: .type)
            switch type {
            case "identifier":
                self = .identifier(try container.decode(String.self, forKey: .value))
            case "identifier-list":
                self = .identifierList(try container.decode([ValueContainer].self, forKey: .value).map(\.value))
            case "string":
                self = .string(try container.decode(String.self, forKey: .value))
            case "string-list":
                self = .stringList(try container.decode([ValueContainer].self, forKey: .value).map(\.value))
            case "decimal":
                self = .decimal(try container.decode(String.self, forKey: .value))
            case "decimal-list":
                self = .decimalList(try container.decode([ValueContainer].self, forKey: .value).map(\.value))
            case "integer":
                self = .integer(try container.decode(String.self, forKey: .value))
            case "integer-list":
                self = .integerList(try container.decode([ValueContainer].self, forKey: .value).map(\.value))
            case "*":
                self = .wildcard
            default:
                throw DecodingError.dataCorruptedError(
                    forKey: .type,
                    in: container,
                    debugDescription: "Unknown extended attribute type: \(type)"
                )
            }
        }
    }
}
