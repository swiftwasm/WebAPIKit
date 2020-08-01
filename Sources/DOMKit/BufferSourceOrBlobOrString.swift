
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public enum BufferSourceOrBlobOrString: JSValueEncodable, JSValueDecodable, ExpressibleByStringLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return BufferSource.canDecode(from: jsValue) || Blob.canDecode(from: jsValue) || String.canDecode(from: jsValue)
    }

    case bufferSource(BufferSource)
    case blob(Blob)
    case string(String)

    public init(jsValue: JSValue) {
        if BufferSource.canDecode(from: jsValue) {
            self = .bufferSource(jsValue.fromJSValue())
        } else if Blob.canDecode(from: jsValue) {
            self = .blob(jsValue.fromJSValue())
        } else if String.canDecode(from: jsValue) {
            self = .string(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .bufferSource(v): return v.jsValue()
        case let .blob(v): return v.jsValue()
        case let .string(v): return v.jsValue()
        }
    }
}
