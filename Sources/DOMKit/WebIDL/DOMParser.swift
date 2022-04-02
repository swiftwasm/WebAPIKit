// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMParser: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.DOMParser].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @inlinable public func parseFromString(string: String, type: DOMParserSupportedType) -> Document {
        let this = jsObject
        return this[Strings.parseFromString].function!(this: this, arguments: [string.jsValue(), type.jsValue()]).fromJSValue()!
    }
}
