import JavaScriptKit

public class ValueIterableIterator<SequenceType: JSBridgedClass & Sequence>: IteratorProtocol
    where SequenceType.Element: ConstructibleFromJSValue
{
    private var index: Int = 0
    private let iterator: JSObject

    public init(sequence: SequenceType) {
        // TODO: fetch the actual symbol
        iterator = sequence.jsObject[JSObject.global.Symbol.object!.iterator.string!]!().object!
    }

    public func next() -> SequenceType.Element? {
        defer { index += 1 }
        let value = iterator.next!()
        guard value != .undefined else {
            return nil
        }

        return value.fromJSValue()
    }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
public class ValueIterableAsyncIterator<SequenceType: JSBridgedClass & AsyncSequence>: AsyncIteratorProtocol
    where SequenceType.Element: ConstructibleFromJSValue
{
    private var index: Int = 0
    private let sequence: SequenceType

    public init(sequence: SequenceType) {
        self.sequence = sequence
    }

    public func next() async -> SequenceType.Element? {
        // TODO: implement
        nil
    }
}
