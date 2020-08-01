
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public enum ArrayBufferViewOrArrayBuffer: JSValueEncodable, JSValueDecodable {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return ArrayBufferView.canDecode(from: jsValue) || ArrayBuffer.canDecode(from: jsValue)
    }

    case arrayBufferView(ArrayBufferView)
    case arrayBuffer(ArrayBuffer)

    public init(jsValue: JSValue) {
        if ArrayBufferView.canDecode(from: jsValue) {
            self = .arrayBufferView(jsValue.fromJSValue())
        } else if ArrayBuffer.canDecode(from: jsValue) {
            self = .arrayBuffer(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .arrayBufferView(v): return v.jsValue()
        case let .arrayBuffer(v): return v.jsValue()
        }
    }
}
