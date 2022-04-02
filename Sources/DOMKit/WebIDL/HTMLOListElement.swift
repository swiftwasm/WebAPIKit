// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLOListElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLOListElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _reversed = ReadWriteAttribute(jsObject: jsObject, name: Strings.reversed)
        _start = ReadWriteAttribute(jsObject: jsObject, name: Strings.start)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        _compact = ReadWriteAttribute(jsObject: jsObject, name: Strings.compact)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var reversed: Bool

    @ReadWriteAttribute
    public var start: Int32

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var compact: Bool
}
