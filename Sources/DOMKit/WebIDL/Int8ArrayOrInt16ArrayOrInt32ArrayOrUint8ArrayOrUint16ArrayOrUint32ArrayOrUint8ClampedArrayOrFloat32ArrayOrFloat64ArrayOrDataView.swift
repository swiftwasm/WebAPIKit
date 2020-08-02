
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum Int8ArrayOrInt16ArrayOrInt32ArrayOrUint8ArrayOrUint16ArrayOrUint32ArrayOrUint8ClampedArrayOrFloat32ArrayOrFloat64ArrayOrDataView: JSValueEncodable, JSValueDecodable {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return Int8Array.canDecode(from: jsValue) || Int16Array.canDecode(from: jsValue) || Int32Array.canDecode(from: jsValue) || Uint8Array.canDecode(from: jsValue) || Uint16Array.canDecode(from: jsValue) || Uint32Array.canDecode(from: jsValue) || Uint8ClampedArray.canDecode(from: jsValue) || Float32Array.canDecode(from: jsValue) || Float64Array.canDecode(from: jsValue) || DataView.canDecode(from: jsValue)
    }

    case int8Array(Int8Array)
    case int16Array(Int16Array)
    case int32Array(Int32Array)
    case uint8Array(Uint8Array)
    case uint16Array(Uint16Array)
    case uint32Array(Uint32Array)
    case uint8ClampedArray(Uint8ClampedArray)
    case float32Array(Float32Array)
    case float64Array(Float64Array)
    case dataView(DataView)

    public init(jsValue: JSValue) {
        if Int8Array.canDecode(from: jsValue) {
            self = .int8Array(jsValue.fromJSValue())
        } else if Int16Array.canDecode(from: jsValue) {
            self = .int16Array(jsValue.fromJSValue())
        } else if Int32Array.canDecode(from: jsValue) {
            self = .int32Array(jsValue.fromJSValue())
        } else if Uint8Array.canDecode(from: jsValue) {
            self = .uint8Array(jsValue.fromJSValue())
        } else if Uint16Array.canDecode(from: jsValue) {
            self = .uint16Array(jsValue.fromJSValue())
        } else if Uint32Array.canDecode(from: jsValue) {
            self = .uint32Array(jsValue.fromJSValue())
        } else if Uint8ClampedArray.canDecode(from: jsValue) {
            self = .uint8ClampedArray(jsValue.fromJSValue())
        } else if Float32Array.canDecode(from: jsValue) {
            self = .float32Array(jsValue.fromJSValue())
        } else if Float64Array.canDecode(from: jsValue) {
            self = .float64Array(jsValue.fromJSValue())
        } else if DataView.canDecode(from: jsValue) {
            self = .dataView(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

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
