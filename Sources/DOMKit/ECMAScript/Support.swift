//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class Promise<Type>: JSBridgedType {

    public static var classRef: JSFunctionRef { JSObjectRef.global.Promise.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {

        self.objectRef = objectRef
    }
}

public class ReadableStream: JSBridgedType {

    public static var classRef: JSFunctionRef { JSObjectRef.global.ReadableStream.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public subscript(dynamicMember name: String) -> JSValue {
        get { objectRef[name] }
        set { objectRef[name] = newValue }
    }
}

@propertyWrapper public struct ClosureHandler<ArgumentType: JSValueEncodable & JSValueDecodable, ReturnType: JSValueEncodable & JSValueDecodable> {

    let objectRef: JSObjectRef
    let name: String

    public init(objectRef: JSObjectRef, name: String) {
        self.objectRef = objectRef
        self.name = name
    }

    public var wrappedValue: (ArgumentType) -> ReturnType {
        get {
            { arg in objectRef[name]!(arg).fromJSValue() }
        }
        set {
            objectRef[name] = JSValue(from: JSClosure { JSValue(from: newValue($0[0].fromJSValue())) })
        }
    }
}

@propertyWrapper public struct OptionalClosureHandler<ArgumentType: JSValueEncodable & JSValueDecodable, ReturnType: JSValueEncodable & JSValueDecodable> {

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
            return { function(JSValue(from: $0)).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[name] = JSValue(from: JSClosure { JSValue(from: newValue($0[0].fromJSValue())) })
            } else {
                objectRef[name] = .null
            }
        }
    }
}

@propertyWrapper public struct ReadWriteAttribute<Wrapped: JSValueEncodable & JSValueDecodable> {

    let objectRef: JSObjectRef
    let name: String

    public init(objectRef: JSObjectRef, name: String) {
        self.objectRef = objectRef
        self.name = name
    }

    public var wrappedValue: Wrapped {
        get {
            return objectRef[name].fromJSValue()
        }
        set {
            objectRef[name] = JSValue(from: newValue)
        }
    }
}

@propertyWrapper public struct ReadonlyAttribute<Wrapped: JSValueDecodable> {

    let objectRef: JSObjectRef
    let name: String

    public init(objectRef: JSObjectRef, name: String) {
        self.objectRef = objectRef
        self.name = name
    }

    public var wrappedValue: Wrapped {
        get {
            return objectRef[name].fromJSValue()
        }
    }
}

public class ValueIterableIterator<SequenceType: JSBridgedType & Sequence>: IteratorProtocol where SequenceType.Element: JSValueDecodable {

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

public class PairIterableIterator<SequenceType: JSBridgedType & KeyValueSequence>: IteratorProtocol where SequenceType.Value: JSValueDecodable {

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

        let keyValue: [AnyJSValueCodable] = next.value.fromJSValue()
        return (keyValue[0].fromJSValue(), keyValue[1].fromJSValue())
    }
}
