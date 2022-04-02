import JavaScriptEventLoop
import JavaScriptKit

public class ValueIterableIterator<SequenceType: JSBridgedClass & Sequence>: IteratorProtocol
    where SequenceType.Element: ConstructibleFromJSValue
{
    private let iterator: JSObject

    public init(sequence: SequenceType) {
        iterator = sequence.jsObject[JSSymbol.iterator].function!().object!
    }

    public func next() -> SequenceType.Element? {
        let result = iterator.next!().object!
        let done = result.done.boolean!
        guard !done else { return nil }

        return result.value.fromJSValue()!
    }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
public class ValueIterableAsyncIterator<SequenceType: JSBridgedClass & AsyncSequence>: AsyncIteratorProtocol
    where SequenceType.Element: ConstructibleFromJSValue
{
    private var index: Int = 0
    private let iterator: JSObject

    public init(sequence: SequenceType) {
        iterator = sequence.jsObject[JSSymbol.asyncIterator].function!().object!
    }

    public func next() async throws -> SequenceType.Element? {
        let promise = JSPromise(from: iterator.next!())!
        let result = try await promise.get()
        let done = result.done.boolean!
        guard !done else { return nil }

        return result.value.fromJSValue()!
    }
}
