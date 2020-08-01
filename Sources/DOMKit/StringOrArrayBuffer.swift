
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public enum StringOrArrayBuffer: JSValueEncodable, JSValueDecodable, ExpressibleByStringLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return String.canDecode(from: jsValue) || ArrayBuffer.canDecode(from: jsValue)
    }

    case string(String)
    case arrayBuffer(ArrayBuffer)

    public init(jsValue: JSValue) {
        if String.canDecode(from: jsValue) {
            self = .string(jsValue.fromJSValue())
        } else if ArrayBuffer.canDecode(from: jsValue) {
            self = .arrayBuffer(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .string(v): return v.jsValue()
        case let .arrayBuffer(v): return v.jsValue()
        }
    }
}
