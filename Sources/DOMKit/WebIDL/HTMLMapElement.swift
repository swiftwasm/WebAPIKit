// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLMapElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLMapElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _areas = ReadonlyAttribute(jsObject: jsObject, name: Strings.areas)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var areas: HTMLCollection
}
