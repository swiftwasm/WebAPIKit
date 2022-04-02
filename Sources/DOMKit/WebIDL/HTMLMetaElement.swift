// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLMetaElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLMetaElement.function! }

    private enum Keys {
        static let content: JSString = "content"
        static let httpEquiv: JSString = "httpEquiv"
        static let media: JSString = "media"
        static let name: JSString = "name"
        static let scheme: JSString = "scheme"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _httpEquiv = ReadWriteAttribute(jsObject: jsObject, name: Keys.httpEquiv)
        _content = ReadWriteAttribute(jsObject: jsObject, name: Keys.content)
        _media = ReadWriteAttribute(jsObject: jsObject, name: Keys.media)
        _scheme = ReadWriteAttribute(jsObject: jsObject, name: Keys.scheme)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var httpEquiv: String

    @ReadWriteAttribute
    public var content: String

    @ReadWriteAttribute
    public var media: String

    @ReadWriteAttribute
    public var scheme: String
}