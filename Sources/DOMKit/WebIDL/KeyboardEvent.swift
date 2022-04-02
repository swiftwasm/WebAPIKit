// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class KeyboardEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global.KeyboardEvent.function! }

    private enum Keys {
        static let DOM_KEY_LOCATION_LEFT: JSString = "DOM_KEY_LOCATION_LEFT"
        static let DOM_KEY_LOCATION_NUMPAD: JSString = "DOM_KEY_LOCATION_NUMPAD"
        static let DOM_KEY_LOCATION_RIGHT: JSString = "DOM_KEY_LOCATION_RIGHT"
        static let DOM_KEY_LOCATION_STANDARD: JSString = "DOM_KEY_LOCATION_STANDARD"
        static let altKey: JSString = "altKey"
        static let charCode: JSString = "charCode"
        static let code: JSString = "code"
        static let ctrlKey: JSString = "ctrlKey"
        static let getModifierState: JSString = "getModifierState"
        static let initKeyboardEvent: JSString = "initKeyboardEvent"
        static let isComposing: JSString = "isComposing"
        static let key: JSString = "key"
        static let keyCode: JSString = "keyCode"
        static let location: JSString = "location"
        static let metaKey: JSString = "metaKey"
        static let `repeat`: JSString = "repeat"
        static let shiftKey: JSString = "shiftKey"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _key = ReadonlyAttribute(jsObject: jsObject, name: Keys.key)
        _code = ReadonlyAttribute(jsObject: jsObject, name: Keys.code)
        _location = ReadonlyAttribute(jsObject: jsObject, name: Keys.location)
        _ctrlKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.ctrlKey)
        _shiftKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.shiftKey)
        _altKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.altKey)
        _metaKey = ReadonlyAttribute(jsObject: jsObject, name: Keys.metaKey)
        _repeat = ReadonlyAttribute(jsObject: jsObject, name: Keys.repeat)
        _isComposing = ReadonlyAttribute(jsObject: jsObject, name: Keys.isComposing)
        _charCode = ReadonlyAttribute(jsObject: jsObject, name: Keys.charCode)
        _keyCode = ReadonlyAttribute(jsObject: jsObject, name: Keys.keyCode)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: KeyboardEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    public static let DOM_KEY_LOCATION_STANDARD: UInt32 = 0x00

    public static let DOM_KEY_LOCATION_LEFT: UInt32 = 0x01

    public static let DOM_KEY_LOCATION_RIGHT: UInt32 = 0x02

    public static let DOM_KEY_LOCATION_NUMPAD: UInt32 = 0x03

    @ReadonlyAttribute
    public var key: String

    @ReadonlyAttribute
    public var code: String

    @ReadonlyAttribute
    public var location: UInt32

    @ReadonlyAttribute
    public var ctrlKey: Bool

    @ReadonlyAttribute
    public var shiftKey: Bool

    @ReadonlyAttribute
    public var altKey: Bool

    @ReadonlyAttribute
    public var metaKey: Bool

    @ReadonlyAttribute
    public var `repeat`: Bool

    @ReadonlyAttribute
    public var isComposing: Bool

    public func getModifierState(keyArg: String) -> Bool {
        jsObject[Keys.getModifierState]!(keyArg.jsValue()).fromJSValue()!
    }

    public func initKeyboardEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, viewArg: Window? = nil, keyArg: String? = nil, locationArg: UInt32? = nil, ctrlKey: Bool? = nil, altKey: Bool? = nil, shiftKey: Bool? = nil, metaKey: Bool? = nil) {
        let _arg0 = typeArg.jsValue()
        let _arg1 = bubblesArg?.jsValue() ?? .undefined
        let _arg2 = cancelableArg?.jsValue() ?? .undefined
        let _arg3 = viewArg?.jsValue() ?? .undefined
        let _arg4 = keyArg?.jsValue() ?? .undefined
        let _arg5 = locationArg?.jsValue() ?? .undefined
        let _arg6 = ctrlKey?.jsValue() ?? .undefined
        let _arg7 = altKey?.jsValue() ?? .undefined
        let _arg8 = shiftKey?.jsValue() ?? .undefined
        let _arg9 = metaKey?.jsValue() ?? .undefined
        _ = jsObject[Keys.initKeyboardEvent]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8, _arg9)
    }

    @ReadonlyAttribute
    public var charCode: UInt32

    @ReadonlyAttribute
    public var keyCode: UInt32
}
