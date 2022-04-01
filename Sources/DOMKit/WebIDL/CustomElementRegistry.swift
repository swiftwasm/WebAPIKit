// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CustomElementRegistry: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.CustomElementRegistry.function! }

    private enum Keys {
        static let whenDefined: JSString = "whenDefined"
        static let upgrade: JSString = "upgrade"
        static let get: JSString = "get"
        static let define: JSString = "define"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    // XXX: member 'define' is ignored

    public func get(name: String) -> __UNSUPPORTED_UNION__ {
        jsObject[Keys.get]!(name.jsValue()).fromJSValue()!
    }

    // XXX: member 'whenDefined' is ignored

    // XXX: member 'whenDefined' is ignored

    public func upgrade(root: Node) {
        _ = jsObject[Keys.upgrade]!(root.jsValue())
    }
}
