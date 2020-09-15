//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class Promise<Type>: JSBridgedClass {

    public static var constructor: JSFunction { JSObject.global.Promise.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {

        self.jsObject = jsObject
    }
}

public class ReadableStream: JSBridgedClass {

    public static var constructor: JSFunction { JSObject.global.ReadableStream.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public subscript(dynamicMember name: String) -> JSValue {
        get { jsObject[name] }
        set { jsObject[name] = newValue }
    }
}

@propertyWrapper public struct ClosureHandler<ArgumentType: JSValueCodable, ReturnType: JSValueCodable> {

    let jsObject: JSObject
    let name: String

    public init(jsObject: JSObject, name: String) {
        self.jsObject = jsObject
        self.name = name
    }

    public var wrappedValue: (ArgumentType) -> ReturnType {
        get {
            { arg in jsObject[name]!(arg).fromJSValue()! }
        }
        set {
            jsObject[name] = JSClosure { newValue($0[0].fromJSValue()!).jsValue() }.jsValue()
        }
    }
}

@propertyWrapper public struct OptionalClosureHandler<ArgumentType: JSValueCodable, ReturnType: JSValueCodable> {

    let jsObject: JSObject
    let name: String

    public init(jsObject: JSObject, name: String) {
        self.jsObject = jsObject
        self.name = name
    }

    public var wrappedValue: ((ArgumentType) -> ReturnType)? {
        get {
            guard let function = jsObject[name].function else {
                return nil
            }
            return { function($0.jsValue()).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject[name] = JSClosure { newValue($0[0].fromJSValue()!).jsValue() }.jsValue()
            } else {
                jsObject[name] = .null
            }
        }
    }
}

@propertyWrapper public struct ReadWriteAttribute<Wrapped: JSValueCodable> {

    let jsObject: JSObject
    let name: String

    public init(jsObject: JSObject, name: String) {
        self.jsObject = jsObject
        self.name = name
    }

    public var wrappedValue: Wrapped {
        get {
            return jsObject[name].fromJSValue()!
        }
        set {
            jsObject[name] = newValue.jsValue()
        }
    }
}

@propertyWrapper public struct ReadonlyAttribute<Wrapped: JSValueConstructible> {

    let jsObject: JSObject
    let name: String

    public init(jsObject: JSObject, name: String) {
        self.jsObject = jsObject
        self.name = name
    }

    public var wrappedValue: Wrapped {
        get {
            return jsObject[name].fromJSValue()!
        }
    }
}

public class ValueIterableIterator<SequenceType: JSBridgedClass & Sequence>: IteratorProtocol where SequenceType.Element: JSValueConstructible {

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

public class PairIterableIterator<SequenceType: JSBridgedClass & KeyValueSequence>: IteratorProtocol where SequenceType.Value: JSValueConstructible {

    private let iterator: JSObject
    private let sequence: SequenceType

    public init(sequence: SequenceType) {
        self.sequence = sequence
        self.iterator = sequence.jsObject.entries!().object!
    }

    public func next() -> SequenceType.Element? {

        let next: JSObject = iterator.next!().object!

        guard next.done.boolean! == false else {
            return nil
        }

        let keyValue: [AnyJSValueCodable] = next.value.fromJSValue()!
        return (keyValue[0].fromJSValue()!, keyValue[1].fromJSValue()!)
    }
}
