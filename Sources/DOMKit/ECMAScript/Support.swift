//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

/* TODO: fix this */
public typealias __UNSUPPORTED_UNION__ = JSValue

public typealias WindowProxy = Window

public extension HTMLElement {
    convenience init?(from element: Element) {
        self.init(from: .object(element.jsObject))
    }
}

public class BridgedDictionary: JSValueCompatible {
    public let jsObject: JSObject

    public func jsValue() -> JSValue {
        jsObject.jsValue()
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public static func construct(from value: JSValue) -> Self? {
        if let object = value.object {
            return Self.construct(from: object)
        }
        return nil
    }

    public static func construct(from object: JSObject) -> Self? {
        Self(unsafelyWrapping: object)
    }
}

public let globalThis = Window(from: JSObject.global.jsValue())!

public typealias Uint8ClampedArray = JSUInt8ClampedArray

@propertyWrapper public struct ReadWriteAttribute<Wrapped: JSValueCompatible> {
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: String

    public init(jsObject: JSObject, name: String) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: Wrapped {
        get { ReadWriteAttribute[name, in: jsObject] }
        set { ReadWriteAttribute[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: String, in jsObject: JSObject) -> Wrapped {
        get { jsObject[name].fromJSValue()! }
        set { jsObject[name] = newValue.jsValue() }
    }
}

@propertyWrapper public struct ReadonlyAttribute<Wrapped: ConstructibleFromJSValue> {
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: String

    public init(jsObject: JSObject, name: String) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: Wrapped {
        ReadonlyAttribute[name, in: jsObject]
    }

    @inlinable public static subscript(name: String, in jsObject: JSObject) -> Wrapped {
        jsObject[name].fromJSValue()!
    }
}

public class ValueIterableIterator<SequenceType: JSBridgedClass & Sequence>: IteratorProtocol where SequenceType.Element: ConstructibleFromJSValue {
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
