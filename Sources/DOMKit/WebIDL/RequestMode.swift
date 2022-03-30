// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum RequestMode: String, JSValueCompatible {
    case navigate
    case sameOrigin = "same-origin"
    case noCors = "no-cors"
    case cors

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.string {
            return Self(rawValue: string)
        }
        return nil
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}
