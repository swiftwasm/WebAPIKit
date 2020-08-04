//
//  Created by Manuel Burghard. Licensed unter MIT.
//

import JavaScriptKit

public class DataView: JSBridgedType {

    public class var classRef: JSFunctionRef { JSObjectRef.global.DataView.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _buffer = ReadonlyAttribute(objectRef: objectRef, name: "buffer")
        _byteOffset = ReadonlyAttribute(objectRef: objectRef, name: "byteOffset")
        _byteLength = ReadonlyAttribute(objectRef: objectRef, name: "byteLength")
        self.objectRef = objectRef
    }

    public convenience init(buffer: ArrayBuffer) {

        self.init(objectRef: DataView.classRef(new: JSValue(from: buffer)))
    }

    public convenience init(buffer: ArrayBuffer, byteOffset: UInt32) {

        self.init(objectRef: DataView.classRef(new: JSValue(from: buffer), JSValue(from: byteOffset)))
    }

    public convenience init(buffer: ArrayBuffer, byteOffset: UInt32, byteLength: UInt32) {

        self.init(objectRef: DataView.classRef(new: JSValue(from: buffer), JSValue(from: byteOffset), JSValue(from: byteLength)))
    }

    @ReadonlyAttribute
    public var buffer: ArrayBuffer

    @ReadonlyAttribute
    public var byteOffset: UInt32

    @ReadonlyAttribute
    public var byteLength: UInt32


    public func getFloat32(byteOffset: UInt32) -> Float {

        return objectRef.getFloat32!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getFloat32(byteOffset: UInt32, littleEndian: Bool) -> Float {

        return objectRef.getFloat32!(JSValue(from: byteOffset), JSValue(from: littleEndian)).fromJSValue()
    }

    public func getFloat64(byteOffset: UInt32) -> Double {

        return objectRef.getFloat64!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getFloat64(byteOffset: UInt32, littleEndian: Bool) -> Double {

        return objectRef.getFloat64!(JSValue(from: byteOffset), JSValue(from: littleEndian)).fromJSValue()
    }

    public func getUint8(byteOffset: UInt32) -> UInt8 {

        return objectRef.getUint8!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getUint16(byteOffset: UInt32) -> UInt16 {

        return objectRef.getUint16!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getUint16(byteOffset: UInt32, littleEndian: Bool) -> UInt16 {

        return objectRef.getUint16!(JSValue(from: byteOffset), JSValue(from: littleEndian)).fromJSValue()
    }

    public func getUint32(byteOffset: UInt32) -> UInt32 {

        return objectRef.getUint32!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getUint32(byteOffset: UInt32, littleEndian: Bool) -> UInt32 {

        return objectRef.getUint32!(JSValue(from: byteOffset), JSValue(from: littleEndian)).fromJSValue()
    }

    public func getInt8(byteOffset: UInt32) -> Int8 {

        return objectRef.getInt8!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getInt16(byteOffset: UInt32) -> Int16 {

        return objectRef.getInt16!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getInt16(byteOffset: UInt32, littleEndian: Bool) -> Int16 {

        return objectRef.getInt16!(JSValue(from: byteOffset), JSValue(from: littleEndian)).fromJSValue()
    }

    public func getInt32(byteOffset: UInt32) -> Int32 {

        return objectRef.getInt32!(JSValue(from: byteOffset)).fromJSValue()
    }

    public func getInt32(byteOffset: UInt32, littleEndian: Bool) -> Int32 {

        return objectRef.getInt32!(JSValue(from: byteOffset), JSValue(from: littleEndian)).fromJSValue()
    }

    public func setUint8(byteOffset: UInt32, value: UInt8) {
        _ = objectRef.setUint8!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setUint16(byteOffset: UInt32, value: UInt16) {
        _ = objectRef.setUint16!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setUint16(byteOffset: UInt32, value: UInt16, littleEndian: Bool) {
        _ = objectRef.setUint16!(JSValue(from: byteOffset), JSValue(from: value), JSValue(from: littleEndian))
    }

    public func setUint32(byteOffset: UInt32, value: UInt32) {
        _ = objectRef.setUint32!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setUint32(byteOffset: UInt32, value: UInt32, littleEndian: Bool) {
        _ = objectRef.setUint32!(JSValue(from: byteOffset), JSValue(from: value), JSValue(from: littleEndian))
    }

    public func setInt8(byteOffset: UInt32, value: Int8) {
        _ = objectRef.setUint8!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setInt16(byteOffset: UInt32, value: Int16) {
        _ = objectRef.setInt16!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setInt16(byteOffset: UInt32, value: Int16, littleEndian: Bool) {
        _ = objectRef.setInt16!(JSValue(from: byteOffset), JSValue(from: value), JSValue(from: littleEndian))
    }

    public func setInt32(byteOffset: UInt32, value: Int32) {
        _ = objectRef.setInt32!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setInt32(byteOffset: UInt32, value: Int32, littleEndian: Bool) {
        _ = objectRef.setInt32!(JSValue(from: byteOffset), JSValue(from: value), JSValue(from: littleEndian))
    }

    public func setFloat32(byteOffset: UInt32, value: Float) {
        _ = objectRef.setFloat32!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setFloat32(byteOffset: UInt32, value: Float, littleEndian: Bool) {
        _ = objectRef.setFloat32!(JSValue(from: byteOffset), JSValue(from: value), JSValue(from: littleEndian))
    }

    public func setFloat64(byteOffset: UInt32, value: Double) {
        _ = objectRef.setFloat64!(JSValue(from: byteOffset), JSValue(from: value))
    }

    public func setFloat64(byteOffset: UInt32, value: Double, littleEndian: Bool) {
        _ = objectRef.setFloat64!(JSValue(from: byteOffset), JSValue(from: value), JSValue(from: littleEndian))
    }
}

