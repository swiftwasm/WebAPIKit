// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TrustedScript: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.TrustedScript].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }

    @inlinable public func toJSON() -> String {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public static func fromLiteral(templateStringsArray: JSObject) -> Self {
        let this = constructor
        return this[Strings.fromLiteral].function!(this: this, arguments: [templateStringsArray.jsValue]).fromJSValue()!
    }
}
