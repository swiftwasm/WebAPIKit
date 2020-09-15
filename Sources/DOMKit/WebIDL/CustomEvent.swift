
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class CustomEvent: Event {
    override public class var constructor: JSFunction { JSObject.global.CustomEvent.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _detail = ReadonlyAttribute(jsObject: jsObject, name: "detail")
        super.init(withCompatibleObject: jsObject)
    }

    public convenience init(type: String, eventInitDict: CustomEventInit = [:]) {
        self.init(withCompatibleObject: CustomEvent.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var detail: AnyJSValueCodable

    public func initCustomEvent(type: String, bubbles: Bool = false, cancelable: Bool = false, detail: AnyJSValueCodable = nil) {
        _ = jsObject.initCustomEvent!(type.jsValue(), bubbles.jsValue(), cancelable.jsValue(), detail.jsValue())
    }
}
