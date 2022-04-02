// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CustomElementRegistry: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.CustomElementRegistry].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    // XXX: member 'define' is ignored

    @inlinable public func get(name: String) -> __UNSUPPORTED_UNION__ {
        let this = jsObject
        return this[Strings.get].function!(this: this, arguments: [name.jsValue()]).fromJSValue()!
    }

    // XXX: member 'whenDefined' is ignored

    // XXX: member 'whenDefined' is ignored

    @inlinable public func upgrade(root: Node) {
        let this = jsObject
        _ = this[Strings.upgrade].function!(this: this, arguments: [root.jsValue()])
    }
}
