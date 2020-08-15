
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum FileOrStringOrFormData: JSBridgedType, ExpressibleByStringLiteral {
    case file(File)
    case string(String)
    case formData(FormData)

    public init?(from value: JSValue) {
        if let decoded: File = value.fromJSValue() {
            self = .file(decoded)
        } else if let decoded: String = value.fromJSValue() {
            self = .string(decoded)
        } else if let decoded: FormData = value.fromJSValue() {
            self = .formData(decoded)
        } else {
            fatalError()
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .file(v): return v.jsValue()
        case let .string(v): return v.jsValue()
        case let .formData(v): return v.jsValue()
        }
    }
}
