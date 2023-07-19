//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import _CJavaScriptKit
import JavaScriptKit

public typealias Int8Array = JSTypedArray<Int8>
public typealias Int16Array = JSTypedArray<Int16>
public typealias Int32Array = JSTypedArray<Int32>
public typealias Uint8Array = JSTypedArray<UInt8>
public typealias Uint16Array = JSTypedArray<UInt16>
public typealias Uint32Array = JSTypedArray<UInt32>
public typealias Float32Array = JSTypedArray<Float32>
public typealias Float64Array = JSTypedArray<Float64>

public class ArrayBuffer: JSBridgedClass {
    public class var constructor: JSFunction? { JSObject.global.ArrayBuffer.function }

    public let jsObject: JSObject

    @inlinable
    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable
    public convenience init(length: Int) {
        self.init(unsafelyWrapping: Self.constructor!.new(length))
    }

    @inlinable
    public static func isView(_ object: JSValueCompatible) -> Bool {
        JSObject.global.ArrayBuffer.object!.isView!(object).fromJSValue()!
    }
}

public class SharedArrayBuffer: JSBridgedClass {
    public class var constructor: JSFunction? { JSObject.global.SharedArrayBuffer.function }

    public let jsObject: JSObject

    @inlinable
    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable
    public convenience init(length: Int) {
        self.init(unsafelyWrapping: Self.constructor!.new(length))
    }

    @inlinable
    public convenience init(length: Int, maxByteLength: Int) {
        self.init(unsafelyWrapping: Self.constructor!.new(length, ["maxByteLength": maxByteLength]))
    }

    @inlinable
    public var byteLength: Int {
        Int(jsObject.byteLength.number!)
    }

    @inlinable
    public var growable: Bool {
        jsObject.growable.boolean!
    }

    @inlinable
    public var maxByteLength: Int {
        Int(jsObject.maxByteLength.number!)
    }

    @inlinable
    public func grow(newLength: Int) {
        _ = jsObject.grow!(newLength)
    }

    @inlinable
    public func slice(begin: Int) -> SharedArrayBuffer {
        jsObject.slice!(begin).fromJSValue()!
    }
    @inlinable
    public func slice(begin: Int, end: Int) -> SharedArrayBuffer {
        jsObject.slice!(begin, end).fromJSValue()!
    }
}

public extension JSTypedArray {
    convenience init(_ arrayBuffer: ArrayBuffer) {
        self.init(unsafelyWrapping: Self.constructor!.new(arrayBuffer))
    }

    convenience init(_ sharedArrayBuffer: SharedArrayBuffer) {
        self.init(unsafelyWrapping: Self.constructor!.new(sharedArrayBuffer))
    }

    // Exactly one of these two properties will be non-nil.
    @inlinable
    var arrayBuffer: ArrayBuffer! {
        ArrayBuffer(from: jsObject.buffer)
    }

    @inlinable
    var sharedArrayBuffer: SharedArrayBuffer! {
        SharedArrayBuffer(from: jsObject.buffer)
    }
}

#if canImport(Foundation)
    import Foundation

    public extension Data {
        init(_ arrayBuffer: ArrayBuffer) {
            self = JSTypedArray<UInt8>(arrayBuffer).withUnsafeBytes {
                Data(buffer: $0)
            }
        }

        init(_ sharedArrayBuffer: SharedArrayBuffer) {
            self = JSTypedArray<UInt8>(sharedArrayBuffer).withUnsafeBytes {
                Data(buffer: $0)
            }
        }
    }
#endif
