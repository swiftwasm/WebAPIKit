// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLMapElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLMapElement.function! }

    private enum Keys {
        static let areas: JSString = "areas"
        static let name: JSString = "name"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _areas = ReadonlyAttribute(jsObject: jsObject, name: Keys.areas)
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