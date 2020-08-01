
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum FileOrString: JSValueEncodable, JSValueDecodable, ExpressibleByStringLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return File.canDecode(from: jsValue) || String.canDecode(from: jsValue)
    }

    case file(File)
    case string(String)

    public init(jsValue: JSValue) {
        if File.canDecode(from: jsValue) {
            self = .file(jsValue.fromJSValue())
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
        case let .file(v): return v.jsValue()
        case let .string(v): return v.jsValue()
        }
    }
}
