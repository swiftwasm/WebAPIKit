// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XMLSerializer: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.XMLSerializer].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @inlinable public func serializeToString(root: Node) -> String {
        let this = jsObject
        return this[Strings.serializeToString].function!(this: this, arguments: [root.jsValue()]).fromJSValue()!
    }
}
