// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CanvasDirection: String, JSValueCompatible {
    case ltr
    case rtl
    case inherit

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.string {
            return Self(rawValue: string)
        }
        return nil
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}
