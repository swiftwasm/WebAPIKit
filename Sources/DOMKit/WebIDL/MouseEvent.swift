// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MouseEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global[Strings.MouseEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _movementX = ReadonlyAttribute(jsObject: jsObject, name: Strings.movementX)
        _movementY = ReadonlyAttribute(jsObject: jsObject, name: Strings.movementY)
        _pageX = ReadonlyAttribute(jsObject: jsObject, name: Strings.pageX)
        _pageY = ReadonlyAttribute(jsObject: jsObject, name: Strings.pageY)
        _x = ReadonlyAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadonlyAttribute(jsObject: jsObject, name: Strings.y)
        _offsetX = ReadonlyAttribute(jsObject: jsObject, name: Strings.offsetX)
        _offsetY = ReadonlyAttribute(jsObject: jsObject, name: Strings.offsetY)
        _screenX = ReadonlyAttribute(jsObject: jsObject, name: Strings.screenX)
        _screenY = ReadonlyAttribute(jsObject: jsObject, name: Strings.screenY)
        _clientX = ReadonlyAttribute(jsObject: jsObject, name: Strings.clientX)
        _clientY = ReadonlyAttribute(jsObject: jsObject, name: Strings.clientY)
        _ctrlKey = ReadonlyAttribute(jsObject: jsObject, name: Strings.ctrlKey)
        _shiftKey = ReadonlyAttribute(jsObject: jsObject, name: Strings.shiftKey)
        _altKey = ReadonlyAttribute(jsObject: jsObject, name: Strings.altKey)
        _metaKey = ReadonlyAttribute(jsObject: jsObject, name: Strings.metaKey)
        _button = ReadonlyAttribute(jsObject: jsObject, name: Strings.button)
        _buttons = ReadonlyAttribute(jsObject: jsObject, name: Strings.buttons)
        _relatedTarget = ReadonlyAttribute(jsObject: jsObject, name: Strings.relatedTarget)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var movementX: Double

    @ReadonlyAttribute
    public var movementY: Double

    @ReadonlyAttribute
    public var pageX: Double

    @ReadonlyAttribute
    public var pageY: Double

    @ReadonlyAttribute
    public var x: Double

    @ReadonlyAttribute
    public var y: Double

    @ReadonlyAttribute
    public var offsetX: Double

    @ReadonlyAttribute
    public var offsetY: Double

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
        jsObject[Strings.getModifierState]!(keyArg.jsValue()).fromJSValue()!
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
        _ = jsObject[Strings.initMouseEvent]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8, _arg9, _arg10, _arg11, _arg12, _arg13, _arg14)
    }
}
