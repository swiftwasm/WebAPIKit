// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Sanitizer: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Sanitizer].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(config: SanitizerConfig? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(config?.jsValue() ?? .undefined))
    }

    public func sanitize(input: __UNSUPPORTED_UNION__) -> DocumentFragment {
        let this = jsObject
        return this[Strings.sanitize].function!(this: this, arguments: [input.jsValue()]).fromJSValue()!
    }

    public func sanitizeFor(element: String, input: String) -> Element? {
        let this = jsObject
        return this[Strings.sanitizeFor].function!(this: this, arguments: [element.jsValue(), input.jsValue()]).fromJSValue()!
    }

    public func getConfiguration() -> SanitizerConfig {
        let this = jsObject
        return this[Strings.getConfiguration].function!(this: this, arguments: []).fromJSValue()!
    }

    public static func getDefaultConfiguration() -> SanitizerConfig {
        let this = constructor
        return this[Strings.getDefaultConfiguration].function!(this: this, arguments: []).fromJSValue()!
    }
}
