// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CSS {
    public static var jsObject: JSObject {
        JSObject.global.CSS.object!
    }

    public static func escape(ident: String) -> String {
        JSObject.global.CSS.object!["escape"]!(ident.jsValue()).fromJSValue()!
    }

    public static func supports(property: String, value: String) -> Bool {
        JSObject.global.CSS.object!["supports"]!(property.jsValue(), value.jsValue()).fromJSValue()!
    }

    public static func supports(conditionText: String) -> Bool {
        JSObject.global.CSS.object!["supports"]!(conditionText.jsValue()).fromJSValue()!
    }
}
