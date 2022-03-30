// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CanvasTextBaseline: String, JSValueCompatible {
    case top
    case hanging
    case middle
    case alphabetic
    case ideographic
    case bottom

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.string {
            return Self(rawValue: string)
        }
        return nil
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}
