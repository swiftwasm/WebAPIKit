// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class UIEvent: Event {
    override public class var constructor: JSFunction { JSObject.global.UIEvent.function! }

    private enum Keys {
        static let detail: JSString = "detail"
        static let initUIEvent: JSString = "initUIEvent"
        static let view: JSString = "view"
        static let which: JSString = "which"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _view = ReadonlyAttribute(jsObject: jsObject, name: Keys.view)
        _detail = ReadonlyAttribute(jsObject: jsObject, name: Keys.detail)
        _which = ReadonlyAttribute(jsObject: jsObject, name: Keys.which)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: UIEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var view: Window?

    @ReadonlyAttribute
    public var detail: Int32

    public func initUIEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, viewArg: Window? = nil, detailArg: Int32? = nil) {
        jsObject[Keys.initUIEvent]!(typeArg.jsValue(), bubblesArg?.jsValue() ?? .undefined, cancelableArg?.jsValue() ?? .undefined, viewArg?.jsValue() ?? .undefined, detailArg?.jsValue() ?? .undefined).fromJSValue()!
    }

    @ReadonlyAttribute
    public var which: UInt32
}
