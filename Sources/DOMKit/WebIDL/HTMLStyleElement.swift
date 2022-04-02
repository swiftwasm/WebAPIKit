// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLStyleElement: HTMLElement, LinkStyle {
    override public class var constructor: JSFunction { JSObject.global.HTMLStyleElement.function! }

    private enum Keys {
        static let blocking: JSString = "blocking"
        static let media: JSString = "media"
        static let type: JSString = "type"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _media = ReadWriteAttribute(jsObject: jsObject, name: Keys.media)
        _blocking = ReadonlyAttribute(jsObject: jsObject, name: Keys.blocking)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Keys.type)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var media: String

    @ReadonlyAttribute
    public var blocking: DOMTokenList

    @ReadWriteAttribute
    public var type: String
}