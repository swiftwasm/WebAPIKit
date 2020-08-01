
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public enum NodeOrString: JSValueEncodable, JSValueDecodable, ExpressibleByStringLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return Node.canDecode(from: jsValue) || String.canDecode(from: jsValue)
    }

    case node(Node)
    case string(String)

    public init(jsValue: JSValue) {
        if Node.canDecode(from: jsValue) {
            self = .node(jsValue.fromJSValue())
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
        case let .node(v): return v.jsValue()
        case let .string(v): return v.jsValue()
        }
    }
}
