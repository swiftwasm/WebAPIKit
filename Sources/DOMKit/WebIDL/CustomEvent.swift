
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class CustomEvent: Event {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.CustomEvent.function! }

    public required init(objectRef: JSObjectRef) {
        _detail = ReadonlyAttribute(objectRef: objectRef, name: "detail")
        super.init(objectRef: objectRef)
    }

    public convenience init(type: String, eventInitDict: CustomEventInit = [:]) {
        self.init(objectRef: CustomEvent.classRef(new: JSValue(from: type), JSValue(from: eventInitDict)))
    }

    @ReadonlyAttribute
    public var detail: AnyJSValueCodable

    public func initCustomEvent(type: String, bubbles: Bool = false, cancelable: Bool = false, detail: AnyJSValueCodable = nil) {
        _ = objectRef.initCustomEvent!(JSValue(from: type), JSValue(from: bubbles), JSValue(from: cancelable), JSValue(from: detail))
    }
}
