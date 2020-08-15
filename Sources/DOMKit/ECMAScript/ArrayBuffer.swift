//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit
import _CJavaScriptKit

public typealias Int8Array = JSTypedArray<Int8>
public typealias Int16Array = JSTypedArray<Int16>
public typealias Int32Array = JSTypedArray<Int32>
public typealias Uint8Array = JSTypedArray<UInt8>
public typealias Uint16Array = JSTypedArray<UInt16>
public typealias Uint32Array = JSTypedArray<UInt32>
//public typealias Uint8ClampedArray = JSTypedArray<Uint8Clamped>
public typealias Float32Array = JSTypedArray<Float32>
public typealias Float64Array = JSTypedArray<Float64>

public class ArrayBuffer: JSBridgedClass {

    public class var classRef: JSFunctionRef { JSObjectRef.global.ArrayBuffer.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init(length: Int) {
        self.init(withCompatibleObject: Self.classRef.new( length))
    }

    public static func isView(_ object: AnyJSValueCodable) -> Bool {
        return JSObjectRef.global.ArrayBuffer.object!.isView!(object).fromJSValue()!
    }
}
