// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLBodyElement: HTMLElement, WindowEventHandlers {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLBodyElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onorientationchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onorientationchange)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Strings.text)
        _link = ReadWriteAttribute(jsObject: jsObject, name: Strings.link)
        _vLink = ReadWriteAttribute(jsObject: jsObject, name: Strings.vLink)
        _aLink = ReadWriteAttribute(jsObject: jsObject, name: Strings.aLink)
        _bgColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.bgColor)
        _background = ReadWriteAttribute(jsObject: jsObject, name: Strings.background)
        super.init(unsafelyWrapping: jsObject)
    }

    @ClosureAttribute.Optional1
    public var onorientationchange: EventHandler

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var text: String

    @ReadWriteAttribute
    public var link: String

    @ReadWriteAttribute
    public var vLink: String

    @ReadWriteAttribute
    public var aLink: String

    @ReadWriteAttribute
    public var bgColor: String

    @ReadWriteAttribute
    public var background: String
}
