// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum DocumentVisibilityState: String, JSValueCompatible {
    case visible
    case hidden

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    public init?(rawValue: String) {
        self.init(rawValue: JSString(rawValue))
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}
