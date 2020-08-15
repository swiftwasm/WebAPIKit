//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class Promise<Type>: JSBridgedClass {

    public static var classRef: JSFunctionRef { JSObjectRef.global.Promise.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {

        self.objectRef = objectRef
    }
}

public class ReadableStream: JSBridgedClass {

    public static var classRef: JSFunctionRef { JSObjectRef.global.ReadableStream.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public subscript(dynamicMember name: String) -> JSValue {
        get { objectRef[name] }
        set { objectRef[name] = newValue }
    }
}

@propertyWrapper public struct ClosureHandler<ArgumentType: JSValueCodable, ReturnType: JSValueCodable> {

    let objectRef: JSObjectRef
    let name: String

    public init(objectRef: JSObjectRef, name: String) {
        self.objectRef = objectRef
        self.name = name
    }

    public var wrappedValue: (ArgumentType) -> ReturnType {
        get {
            { arg in objectRef[name]!(arg).fromJSValue()! }
        }
        set {
            objectRef[name] = JSClosure { newValue($0[0].fromJSValue()!).jsValue() }.jsValue()
        }
    }
}

@propertyWrapper public struct OptionalClosureHandler<ArgumentType: JSValueCodable, ReturnType: JSValueCodable> {

    let objectRef: JSObjectRef
    let name: String

    public init(objectRef: JSObjectRef, name: String) {
        self.objectRef = objectRef
        self.name = name
    }

    public var wrappedValue: ((ArgumentType) -> ReturnType)? {
        get {
            guard let function = objectRef[name].function else {
                return nil
            }
            return { function($0.jsValue()).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef[name] = JSClosure { newValue($0[0].fromJSValue()!).jsValue() }.jsValue()
            } else {
                objectRef[name] = .null
            }
        }
    }
}

@propertyWrapper public struct ReadWriteAttribute<Wrapped: JSValueCodable> {

    let objectRef: JSObjectRef
    let name: String

    public init(objectRef: JSObjectRef, name: String) {
        self.objectRef = objectRef
        self.name = name
    }

    public var wrappedValue: Wrapped {
        get {
            return objectRef[name].fromJSValue()!
        }
        set {
            objectRef[name] = newValue.jsValue()
        }
    }
}

@propertyWrapper public struct ReadonlyAttribute<Wrapped: JSValueConstructible> {

    let objectRef: JSObjectRef
    let name: String

    public init(objectRef: JSObjectRef, name: String) {
        self.objectRef = objectRef
        self.name = name
    }

    public var wrappedValue: Wrapped {
        get {
            return objectRef[name].fromJSValue()!
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
        let value = sequence.objectRef[index]
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

    private let iterator: JSObjectRef
    private let sequence: SequenceType

    public init(sequence: SequenceType) {
        self.sequence = sequence
        self.iterator = sequence.objectRef.entries!().object!
    }

    public func next() -> SequenceType.Element? {

        let next: JSObjectRef = iterator.next!().object!

        guard next.done.boolean! == false else {
            return nil
        }

        let keyValue: [AnyJSValueCodable] = next.value.fromJSValue()!
        return (keyValue[0].fromJSValue()!, keyValue[1].fromJSValue()!)
    }
}
