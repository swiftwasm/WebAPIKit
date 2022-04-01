// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MouseEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global.MouseEvent.function! }

    private enum Keys {
        static let ctrlKey: JSString = "ctrlKey"
        static let shiftKey: JSString = "shiftKey"
        static let altKey: JSString = "altKey"
        static let screenY: JSString = "screenY"
        static let metaKey: JSString = "metaKey"
        static let button: JSString = "button"
        static let relatedTarget: JSString = "relatedTarget"
        static let screenX: JSString = "screenX"
        static let buttons: JSString = "buttons"
        static let clientX: JSString = "clientX"
        static let getModifierState: JSString = "getModifierState"
        static let initMouseEvent: JSString = "initMouseEvent"
        static let clientY: JSString = "clientY"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _screenX = ReadonlyAttribute(jsObject: jsObject, name: Keys.screenX)
        _screenY = ReadonlyAttribute(jsObject: jsObject, name: Keys.screenY)
        _clientX = ReadonlyAttribute(jsObject: jsObject, name: Keys.clientX)
        _clientY = ReadonlyAttribute(jsObject: jsObject, name: Keys.clientY)
        _ctrlKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.ctrlKey)
        _shiftKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.shiftKey)
        _altKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.altKey)
        _metaKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.metaKey)
        _button = ReadonlyAttribute(jsObject: jsObject, name: Keys.button)
        _buttons = ReadonlyAttribute(jsObject: jsObject, name: Keys.buttons)
        _relatedTarget = ReadonlyAttribute(jsObject: jsObject, name: Keys.relatedTarget)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: MouseEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var screenX: Int32

    @ReadonlyAttribute
    public var screenY: Int32

    @ReadonlyAttribute
    public var clientX: Int32

    @ReadonlyAttribute
    public var clientY: Int32

    @ReadonlyAttribute
    public var ctrlKey: Bool

    @ReadonlyAttribute
    public var shiftKey: Bool

    @ReadonlyAttribute
    public var altKey: Bool

    @ReadonlyAttribute
    public var metaKey: Bool

    @ReadonlyAttribute
    public var button: Int16

    @ReadonlyAttribute
    public var buttons: UInt16

    @ReadonlyAttribute
    public var relatedTarget: EventTarget?

    public func getModifierState(keyArg: String) -> Bool {
        jsObject[Keys.getModifierState]!(keyArg.jsValue()).fromJSValue()!
    }

    public func initMouseEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, viewArg: Window? = nil, detailArg: Int32? = nil, screenXArg: Int32? = nil, screenYArg: Int32? = nil, clientXArg: Int32? = nil, clientYArg: Int32? = nil, ctrlKeyArg: Bool? = nil, altKeyArg: Bool? = nil, shiftKeyArg: Bool? = nil, metaKeyArg: Bool? = nil, buttonArg: Int16? = nil, relatedTargetArg: EventTarget? = nil) {
        let _arg0 = typeArg.jsValue()
        let _arg1 = bubblesArg?.jsValue() ?? .undefined
        let _arg2 = cancelableArg?.jsValue() ?? .undefined
        let _arg3 = viewArg?.jsValue() ?? .undefined
        let _arg4 = detailArg?.jsValue() ?? .undefined
        let _arg5 = screenXArg?.jsValue() ?? .undefined
        let _arg6 = screenYArg?.jsValue() ?? .undefined
        let _arg7 = clientXArg?.jsValue() ?? .undefined
        let _arg8 = clientYArg?.jsValue() ?? .undefined
        let _arg9 = ctrlKeyArg?.jsValue() ?? .undefined
        let _arg10 = altKeyArg?.jsValue() ?? .undefined
        let _arg11 = shiftKeyArg?.jsValue() ?? .undefined
        let _arg12 = metaKeyArg?.jsValue() ?? .undefined
        let _arg13 = buttonArg?.jsValue() ?? .undefined
        let _arg14 = relatedTargetArg?.jsValue() ?? .undefined
        _ = jsObject[Keys.initMouseEvent]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8, _arg9, _arg10, _arg11, _arg12, _arg13, _arg14)
    }
}
