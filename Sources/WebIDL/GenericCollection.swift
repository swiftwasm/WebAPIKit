/// Necessary because it isn't possible to automatically decode an array
/// of different objects conforming to a protocol that is `Decodable`.
public struct GenericCollection<Element>: Collection, Decodable {
    public let array: [IDLNode]
    public var startIndex: Array.Index { array.startIndex }
    public var endIndex: Array.Index { array.endIndex }
    public subscript(index: Array.Index) -> Element { array[index] as! Element }
    public func index(after index: Array.Index) -> Array.Index { array.index(after: index) }

    init(_ array: [IDLNode]) {
        self.array = array
    }
    
    public init(from decoder: Decoder) throws {
        let wrappers = try decoder.singleValueContainer().decode([IDLNodeDecoder].self)
        array = wrappers.map(\.node)
    }
}
