
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class CustomEvent: Event {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.CustomEvent.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _detail = ReadonlyAttribute(objectRef: objectRef, name: "detail")
        super.init(withCompatibleObject: objectRef)
    }

    public convenience init(type: String, eventInitDict: CustomEventInit = [:]) {
        self.init(withCompatibleObject: CustomEvent.classRef.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var detail: AnyJSValueCodable

    public func initCustomEvent(type: String, bubbles: Bool = false, cancelable: Bool = false, detail: AnyJSValueCodable = nil) {
        _ = objectRef.initCustomEvent!(type.jsValue(), bubbles.jsValue(), cancelable.jsValue(), detail.jsValue())
    }
}
