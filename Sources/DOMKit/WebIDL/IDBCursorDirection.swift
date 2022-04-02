// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum IDBCursorDirection: JSString, JSValueCompatible {
    case next = "next"
    case nextunique = "nextunique"
    case prev = "prev"
    case prevunique = "prevunique"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public func jsValue() -> JSValue { rawValue.jsValue() }
}
