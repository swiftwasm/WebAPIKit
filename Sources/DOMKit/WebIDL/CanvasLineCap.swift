// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CanvasLineCap: String, JSValueCompatible {
    case butt
    case round
    case square

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.string {
            return Self(rawValue: string)
        }
        return nil
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}
