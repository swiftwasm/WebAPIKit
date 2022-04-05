// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TrustedTypePolicy: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.TrustedTypePolicy].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var name: String

    @inlinable public func createHTML(input: String, arguments: JSValue...) -> TrustedHTML {
        let this = jsObject
        return this[Strings.createHTML].function!(this: this, arguments: [input.jsValue] + arguments.map(\.jsValue)).fromJSValue()!
    }

    @inlinable public func createScript(input: String, arguments: JSValue...) -> TrustedScript {
        let this = jsObject
        return this[Strings.createScript].function!(this: this, arguments: [input.jsValue] + arguments.map(\.jsValue)).fromJSValue()!
    }

    @inlinable public func createScriptURL(input: String, arguments: JSValue...) -> TrustedScriptURL {
        let this = jsObject
        return this[Strings.createScriptURL].function!(this: this, arguments: [input.jsValue] + arguments.map(\.jsValue)).fromJSValue()!
    }
}
