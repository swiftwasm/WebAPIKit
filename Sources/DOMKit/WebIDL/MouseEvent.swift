import JavaScriptKit

public class MouseEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global.MouseEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _screenX = ReadonlyAttribute(jsObject: jsObject, name: "screenX")
        _screenY = ReadonlyAttribute(jsObject: jsObject, name: "screenY")
        _clientX = ReadonlyAttribute(jsObject: jsObject, name: "clientX")
        _clientY = ReadonlyAttribute(jsObject: jsObject, name: "clientY")
        _ctrlKey = ReadonlyAttribute(jsObject: jsObject, name: "ctrlKey")
        _shiftKey = ReadonlyAttribute(jsObject: jsObject, name: "shiftKey")
        _altKey = ReadonlyAttribute(jsObject: jsObject, name: "altKey")
        _metaKey = ReadonlyAttribute(jsObject: jsObject, name: "metaKey")
        _button = ReadonlyAttribute(jsObject: jsObject, name: "button")
        _buttons = ReadonlyAttribute(jsObject: jsObject, name: "buttons")
        _relatedTarget = ReadonlyAttribute(jsObject: jsObject, name: "relatedTarget")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: MouseEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var screenX: Double

    @ReadonlyAttribute
    public var screenY: Double

    @ReadonlyAttribute
    public var clientX: Double

    @ReadonlyAttribute
    public var clientY: Double

    @ReadonlyAttribute
    public var ctrlKey: Bool

    @ReadonlyAttribute
    public var shiftKey: Bool

    @ReadonlyAttribute
    public var altKey: Bool

    @ReadonlyAttribute
    public var metaKey: Bool

    @ReadonlyAttribute
    public var button: Double

    @ReadonlyAttribute
    public var buttons: Double

    @ReadonlyAttribute
    public var relatedTarget: EventTarget?

    public func getModifierState(keyArg: String) -> Bool {
        jsObject["getModifierState"]!(keyArg.jsValue()).fromJSValue()!
    }

    public func initMouseEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, viewArg: Window? = nil, detailArg: Double? = nil, screenXArg: Double? = nil, screenYArg: Double? = nil, clientXArg: Double? = nil, clientYArg: Double? = nil, ctrlKeyArg: Bool? = nil, altKeyArg: Bool? = nil, shiftKeyArg: Bool? = nil, metaKeyArg: Bool? = nil, buttonArg: Double? = nil, relatedTargetArg: EventTarget? = nil) {
        _ = jsObject["initMouseEvent"]!(typeArg.jsValue(), bubblesArg?.jsValue() ?? .undefined, cancelableArg?.jsValue() ?? .undefined, viewArg?.jsValue() ?? .undefined, detailArg?.jsValue() ?? .undefined, screenXArg?.jsValue() ?? .undefined, screenYArg?.jsValue() ?? .undefined, clientXArg?.jsValue() ?? .undefined, clientYArg?.jsValue() ?? .undefined, ctrlKeyArg?.jsValue() ?? .undefined, altKeyArg?.jsValue() ?? .undefined, shiftKeyArg?.jsValue() ?? .undefined, metaKeyArg?.jsValue() ?? .undefined, buttonArg?.jsValue() ?? .undefined, relatedTargetArg?.jsValue() ?? .undefined)
    }
}
