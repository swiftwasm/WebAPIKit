
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum Int8ArrayOrInt16ArrayOrInt32ArrayOrUint8ArrayOrUint16ArrayOrUint32ArrayOrUint8ClampedArrayOrFloat32ArrayOrFloat64ArrayOrDataView: JSBridgedType {
    case int8Array(JSTypedArray<Int8>)
    case int16Array(JSTypedArray<Int16>)
    case int32Array(JSTypedArray<Int32>)
    case uint8Array(JSTypedArray<UInt8>)
    case uint16Array(JSTypedArray<UInt16>)
    case uint32Array(JSTypedArray<UInt32>)
    case uint8ClampedArray(JSTypedArray<UInt8>)
    case float32Array(JSTypedArray<Float>)
    case float64Array(JSTypedArray<Double>)
    case dataView(DataView)

    public init?(from value: JSValue) {
        if let decoded: JSTypedArray<Int8> = value.fromJSValue() {
            self = .int8Array(decoded)
        } else if let decoded: JSTypedArray<Int16> = value.fromJSValue() {
            self = .int16Array(decoded)
        } else if let decoded: JSTypedArray<Int32> = value.fromJSValue() {
            self = .int32Array(decoded)
        } else if let decoded: JSTypedArray<UInt8> = value.fromJSValue() {
            self = .uint8Array(decoded)
        } else if let decoded: JSTypedArray<UInt16> = value.fromJSValue() {
            self = .uint16Array(decoded)
        } else if let decoded: JSTypedArray<UInt32> = value.fromJSValue() {
            self = .uint32Array(decoded)
        } else if let decoded: JSTypedArray<UInt8> = value.fromJSValue() {
            self = .uint8ClampedArray(decoded)
        } else if let decoded: JSTypedArray<Float> = value.fromJSValue() {
            self = .float32Array(decoded)
        } else if let decoded: JSTypedArray<Double> = value.fromJSValue() {
            self = .float64Array(decoded)
        } else if let decoded: DataView = value.fromJSValue() {
            self = .dataView(decoded)
        } else {
            return nil
        }
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .int8Array(v): return v.jsValue()
        case let .int16Array(v): return v.jsValue()
        case let .int32Array(v): return v.jsValue()
        case let .uint8Array(v): return v.jsValue()
        case let .uint16Array(v): return v.jsValue()
        case let .uint32Array(v): return v.jsValue()
        case let .uint8ClampedArray(v): return v.jsValue()
        case let .float32Array(v): return v.jsValue()
        case let .float64Array(v): return v.jsValue()
        case let .dataView(v): return v.jsValue()
        }
    }
}
