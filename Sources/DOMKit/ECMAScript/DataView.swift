//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class DataView: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DataView.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _buffer = ReadonlyAttribute(jsObject: jsObject, name: "buffer")
        _byteOffset = ReadonlyAttribute(jsObject: jsObject, name: "byteOffset")
        _byteLength = ReadonlyAttribute(jsObject: jsObject, name: "byteLength")
        self.jsObject = jsObject
    }

    public convenience init(buffer: ArrayBuffer) {
        self.init(unsafelyWrapping: DataView.constructor.new(buffer.jsValue))
    }

    public convenience init(buffer: ArrayBuffer, byteOffset: UInt32) {
        self.init(unsafelyWrapping: DataView.constructor.new(buffer.jsValue, byteOffset.jsValue))
    }

    public convenience init(buffer: ArrayBuffer, byteOffset: UInt32, byteLength: UInt32) {
        self.init(unsafelyWrapping: DataView.constructor.new(buffer.jsValue, byteOffset.jsValue, byteLength.jsValue))
    }

    @ReadonlyAttribute
    public var buffer: ArrayBuffer

    @ReadonlyAttribute
    public var byteOffset: UInt32

    @ReadonlyAttribute
    public var byteLength: UInt32

    public func getFloat32(byteOffset: UInt32) -> Float {
        jsObject.getFloat32!(byteOffset.jsValue).fromJSValue()!
    }

    public func getFloat32(byteOffset: UInt32, littleEndian: Bool) -> Float {
        jsObject.getFloat32!(byteOffset.jsValue, littleEndian.jsValue).fromJSValue()!
    }

    public func getFloat64(byteOffset: UInt32) -> Double {
        jsObject.getFloat64!(byteOffset.jsValue).fromJSValue()!
    }

    public func getFloat64(byteOffset: UInt32, littleEndian: Bool) -> Double {
        jsObject.getFloat64!(byteOffset.jsValue, littleEndian.jsValue).fromJSValue()!
    }

    public func getUint8(byteOffset: UInt32) -> UInt8 {
        jsObject.getUint8!(byteOffset.jsValue).fromJSValue()!
    }

    public func getUint16(byteOffset: UInt32) -> UInt16 {
        jsObject.getUint16!(byteOffset.jsValue).fromJSValue()!
    }

    public func getUint16(byteOffset: UInt32, littleEndian: Bool) -> UInt16 {
        jsObject.getUint16!(byteOffset.jsValue, littleEndian.jsValue).fromJSValue()!
    }

    public func getUint32(byteOffset: UInt32) -> UInt32 {
        jsObject.getUint32!(byteOffset.jsValue).fromJSValue()!
    }

    public func getUint32(byteOffset: UInt32, littleEndian: Bool) -> UInt32 {
        jsObject.getUint32!(byteOffset.jsValue, littleEndian.jsValue).fromJSValue()!
    }

    public func getInt8(byteOffset: UInt32) -> Int8 {
        jsObject.getInt8!(byteOffset.jsValue).fromJSValue()!
    }

    public func getInt16(byteOffset: UInt32) -> Int16 {
        jsObject.getInt16!(byteOffset.jsValue).fromJSValue()!
    }

    public func getInt16(byteOffset: UInt32, littleEndian: Bool) -> Int16 {
        jsObject.getInt16!(byteOffset.jsValue, littleEndian.jsValue).fromJSValue()!
    }

    public func getInt32(byteOffset: UInt32) -> Int32 {
        jsObject.getInt32!(byteOffset.jsValue).fromJSValue()!
    }

    public func getInt32(byteOffset: UInt32, littleEndian: Bool) -> Int32 {
        jsObject.getInt32!(byteOffset.jsValue, littleEndian.jsValue).fromJSValue()!
    }

    public func setUint8(byteOffset: UInt32, value: UInt8) {
        _ = jsObject.setUint8!(byteOffset.jsValue, value.jsValue)
    }

    public func setUint16(byteOffset: UInt32, value: UInt16) {
        _ = jsObject.setUint16!(byteOffset.jsValue, value.jsValue)
    }

    public func setUint16(byteOffset: UInt32, value: UInt16, littleEndian: Bool) {
        _ = jsObject.setUint16!(byteOffset.jsValue, value.jsValue, littleEndian.jsValue)
    }

    public func setUint32(byteOffset: UInt32, value: UInt32) {
        _ = jsObject.setUint32!(byteOffset.jsValue, value.jsValue)
    }

    public func setUint32(byteOffset: UInt32, value: UInt32, littleEndian: Bool) {
        _ = jsObject.setUint32!(byteOffset.jsValue, value.jsValue, littleEndian.jsValue)
    }

    public func setInt8(byteOffset: UInt32, value: Int8) {
        _ = jsObject.setUint8!(byteOffset.jsValue, value.jsValue)
    }

    public func setInt16(byteOffset: UInt32, value: Int16) {
        _ = jsObject.setInt16!(byteOffset.jsValue, value.jsValue)
    }

    public func setInt16(byteOffset: UInt32, value: Int16, littleEndian: Bool) {
        _ = jsObject.setInt16!(byteOffset.jsValue, value.jsValue, littleEndian.jsValue)
    }

    public func setInt32(byteOffset: UInt32, value: Int32) {
        _ = jsObject.setInt32!(byteOffset.jsValue, value.jsValue)
    }

    public func setInt32(byteOffset: UInt32, value: Int32, littleEndian: Bool) {
        _ = jsObject.setInt32!(byteOffset.jsValue, value.jsValue, littleEndian.jsValue)
    }

    public func setFloat32(byteOffset: UInt32, value: Float) {
        _ = jsObject.setFloat32!(byteOffset.jsValue, value.jsValue)
    }

    public func setFloat32(byteOffset: UInt32, value: Float, littleEndian: Bool) {
        _ = jsObject.setFloat32!(byteOffset.jsValue, value.jsValue, littleEndian.jsValue)
    }

    public func setFloat64(byteOffset: UInt32, value: Double) {
        _ = jsObject.setFloat64!(byteOffset.jsValue, value.jsValue)
    }

    public func setFloat64(byteOffset: UInt32, value: Double, littleEndian: Bool) {
        _ = jsObject.setFloat64!(byteOffset.jsValue, value.jsValue, littleEndian.jsValue)
    }
}
