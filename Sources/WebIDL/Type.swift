public struct IDLType: Decodable {
    public let type: String?
    public let value: TypeValue
    public let nullable: Bool
    public let extAttrs: [IDLExtendedAttribute]

    private enum CodingKeys: String, CodingKey {
        case type
        case generic
        case idlType
        case nullable
        case union
        case extAttrs
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        type = try container.decodeIfPresent(String?.self, forKey: .type) ?? nil
        nullable = try container.decode(Bool.self, forKey: .nullable)
        extAttrs = try container.decode([IDLExtendedAttribute].self, forKey: .extAttrs)
        value = try TypeValue(from: decoder)
    }

    public enum TypeValue: Decodable {
        case generic(String, args: [IDLType])
        case single(String)
        case union([IDLType])

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let generic = try container.decode(String.self, forKey: .generic)
            if try container.decode(Bool.self, forKey: .union) {
                self = .union(try container.decode([IDLType].self, forKey: .idlType))
            } else if !generic.isEmpty {
                self = .generic(generic, args: try container.decode([IDLType].self, forKey: .idlType))
            } else if let name = try? container.decode(String.self, forKey: .idlType) {
                self = .single(name)
            } else {
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: container.codingPath,
                        debugDescription: "Expected generic, single, or union type"
                    )
                )
            }
        }
    }
}
