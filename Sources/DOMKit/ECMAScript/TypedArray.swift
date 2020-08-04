//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public protocol TypedArray: class, JSBridgedType, ExpressibleByArrayLiteral where ArrayLiteralElement == Element {

    associatedtype Element: TypedArrayElement & JSValueEncodable & JSValueDecodable
    static var classRef: JSFunctionRef { get }
}

extension TypedArray {

    public static var bytesPerElement: Double {
        return classRef.BYTES_PER_ELEMENT.fromJSValue()
    }

    public static var name: String {
        return classRef.name.fromJSValue()
    }

    public subscript(_ index: Int) -> Element {
        get {
            return objectRef[index].fromJSValue()
        }
        set {
            objectRef[index] = JSValue(from: newValue)
        }
    }

    public init(length: Int) {
        self.init(objectRef: Self.classRef(new: length))
    }

    public init(arrayLiteral elements: Element...) {

        self.init(elements)
    }

    public init(_ array: [Element]) {
        self.init(objectRef: JSObjectRef.createTypedArray(array))
    }

    public init<Type: Strideable>(_ stride: StrideTo<Type>) where Element == Type {

        let array = stride.map {
            $0
        }
        self.init(array)
    }
}

public class Float64Array: TypedArray {

    public typealias Element = Double

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Float64Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Float32Array: TypedArray {

    public typealias Element = Float

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Float32Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint32Array: TypedArray {

    public typealias Element = UInt32

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint32Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint16Array: TypedArray {

    public typealias Element = UInt16

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint16Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint8Array: TypedArray {

    public typealias Element = UInt8

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint8Array.function! }()


    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Int32Array: TypedArray {

    public typealias Element = Int32

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Int32Array.function! }()

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Int16Array: TypedArray {

    public typealias Element = Int16

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Int16Array.function! }()
    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Int8Array: TypedArray {

    public typealias Element = Int8

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Int8Array.function! }()
    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}

public class Uint8ClampedArray: TypedArray {

    public typealias Element = UInt8

    public static let classRef: JSFunctionRef = { JSObjectRef.global.Uint8ClampedArray.function! }()
    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }
}
