// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLEmbedElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLEmbedElement.function! }

    private enum Keys {
        static let align: JSString = "align"
        static let getSVGDocument: JSString = "getSVGDocument"
        static let height: JSString = "height"
        static let name: JSString = "name"
        static let src: JSString = "src"
        static let type: JSString = "type"
        static let width: JSString = "width"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _src = ReadWriteAttribute(jsObject: jsObject, name: Keys.src)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Keys.type)
        _width = ReadWriteAttribute(jsObject: jsObject, name: Keys.width)
        _height = ReadWriteAttribute(jsObject: jsObject, name: Keys.height)
        _align = ReadWriteAttribute(jsObject: jsObject, name: Keys.align)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var src: String

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var width: String

    @ReadWriteAttribute
    public var height: String

    public func getSVGDocument() -> Document? {
        jsObject[Keys.getSVGDocument]!().fromJSValue()!
    }

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var name: String
}