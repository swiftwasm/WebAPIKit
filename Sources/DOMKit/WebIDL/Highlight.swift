// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Highlight: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Highlight].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _priority = ReadWriteAttribute(jsObject: jsObject, name: Strings.priority)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        self.jsObject = jsObject
    }

    public convenience init(initialRanges: AbstractRange...) {
        self.init(unsafelyWrapping: Self.constructor.new(initialRanges.jsValue()))
    }

    // XXX: make me Set-like!

    @ReadWriteAttribute
    public var priority: Int32

    @ReadWriteAttribute
    public var type: HighlightType
}
