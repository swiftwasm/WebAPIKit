// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Instance: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Instance].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _exports = ReadonlyAttribute(jsObject: jsObject, name: Strings.exports)
        self.jsObject = jsObject
    }

    public convenience init(module: Module, importObject: JSObject? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(module.jsValue(), importObject?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var exports: JSObject
}