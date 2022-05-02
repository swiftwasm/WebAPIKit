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
    public class var constructor: JSFunction { JSObject.global.ArrayBuffer.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(length: Int) {
        self.init(unsafelyWrapping: Self.constructor.new(length))
    }

    public static func isView(_ object: JSValueCompatible) -> Bool {
        JSObject.global.ArrayBuffer.object!.isView!(object).fromJSValue()!
    }
}

public extension JSTypedArray {
    convenience init(_ arrayBuffer: ArrayBuffer) {
        self.init(unsafelyWrapping: Self.constructor.new(arrayBuffer))
    }

    var buffer: ArrayBuffer {
        ArrayBuffer(unsafelyWrapping: jsObject.buffer.object!)
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
}
#endif
