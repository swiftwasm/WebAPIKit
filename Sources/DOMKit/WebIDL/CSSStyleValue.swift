// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSStyleValue: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.CSSStyleValue].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }

    @inlinable public static func parse(property: String, cssText: String) -> Self {
        let this = constructor
        return this[Strings.parse].function!(this: this, arguments: [property.jsValue, cssText.jsValue]).fromJSValue()!
    }

    @inlinable public static func parseAll(property: String, cssText: String) -> [CSSStyleValue] {
        let this = constructor
        return this[Strings.parseAll].function!(this: this, arguments: [property.jsValue, cssText.jsValue]).fromJSValue()!
    }
}
