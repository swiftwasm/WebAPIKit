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

public let globalThis = Window(from: JSObject.global.jsValue())!

public class ReadableStream: JSBridgedClass {
    public static var constructor: JSFunction { JSObject.global.ReadableStream.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public subscript(dynamicMember name: String) -> JSValue {
        get { jsObject[name] }
        set { jsObject[name] = newValue }
    }
}

public typealias Uint8ClampedArray = JSUInt8ClampedArray

@propertyWrapper public final class OptionalClosureHandler<ArgumentType, ReturnType>
    where ArgumentType: JSValueCompatible, ReturnType: JSValueCompatible
{
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: String

    public init(jsObject: JSObject, name: String) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: ((ArgumentType) -> ReturnType)? {
        get { OptionalClosureHandler[name, in: jsObject] }
        set { OptionalClosureHandler[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: String, in jsObject: JSObject) -> ((ArgumentType) -> ReturnType)? {
        get {
            guard let function = jsObject[name].function else {
                return nil
            }
            return { function($0.jsValue()).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { newValue($0[0].fromJSValue()!).jsValue() }
                jsObject[name] = closure.jsValue()
            } else {
                jsObject[name] = .null
            }
        }
    }
}

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
    private let sequence: SequenceType

    public init(sequence: SequenceType) {
        self.sequence = sequence
    }

    public func next() -> SequenceType.Element? {
        defer {
            index += 1
        }
        let value = sequence.jsObject[index]
        guard value != .undefined else {
            return nil
        }

        return value.fromJSValue()
    }
}

public protocol KeyValueSequence: Sequence where Element == (String, Value) {
    associatedtype Value
}

public class PairIterableIterator<SequenceType: JSBridgedClass & KeyValueSequence>: IteratorProtocol where SequenceType.Value: ConstructibleFromJSValue {
    private let iterator: JSObject
    private let sequence: SequenceType

    public init(sequence: SequenceType) {
        self.sequence = sequence
        iterator = sequence.jsObject.entries!().object!
    }

    public func next() -> SequenceType.Element? {
        let next: JSObject = iterator.next!().object!

        guard next.done.boolean! == false else {
            return nil
        }

        let keyValue: [JSValue] = next.value.fromJSValue()!
        return (keyValue[0].fromJSValue()!, keyValue[1].fromJSValue()!)
    }
}
