/// Necessary because it isn't possible to automatically decode an array
/// of different objects conforming to a protocol that is `Decodable`.
public struct GenericCollection<Element>: Collection, Decodable {
    public let array: [Element]
    public var startIndex: Array.Index { array.startIndex }
    public var endIndex: Array.Index { array.endIndex }
    public subscript(index: Array.Index) -> Element { array[index] }
    public func index(after index: Array.Index) -> Array.Index { array.index(after: index) }

    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        guard let count = container.count else {
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unkeyed container has no length"
                )
            )
        }

        var result: [Element] = []
        for i in 0 ..< count {
            let member = try container.decodeIDLNode()
            if let member = member as? Element {
                result.append(member)
            } else {
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: container.codingPath,
                        debugDescription: "Expected interface member at index \(i), found \(type(of: member).type)"
                    )
                )
            }
        }
        array = result
    }
}
