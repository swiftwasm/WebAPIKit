import JavaScriptKit

public class KeyboardEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global.KeyboardEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _key = ReadonlyAttribute(jsObject: jsObject, name: "key")
        _code = ReadonlyAttribute(jsObject: jsObject, name: "code")
        _location = ReadonlyAttribute(jsObject: jsObject, name: "location")
        _ctrlKey = ReadonlyAttribute(jsObject: jsObject, name: "ctrlKey")
        _shiftKey = ReadonlyAttribute(jsObject: jsObject, name: "shiftKey")
        _altKey = ReadonlyAttribute(jsObject: jsObject, name: "altKey")
        _metaKey = ReadonlyAttribute(jsObject: jsObject, name: "metaKey")
        _repeat = ReadonlyAttribute(jsObject: jsObject, name: "repeat")
        _isComposing = ReadonlyAttribute(jsObject: jsObject, name: "isComposing")
        _charCode = ReadonlyAttribute(jsObject: jsObject, name: "charCode")
        _keyCode = ReadonlyAttribute(jsObject: jsObject, name: "keyCode")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: KeyboardEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    public static let DOM_KEY_LOCATION_STANDARD: Double = 0x00

    public static let DOM_KEY_LOCATION_LEFT: Double = 0x01

    public static let DOM_KEY_LOCATION_RIGHT: Double = 0x02

    public static let DOM_KEY_LOCATION_NUMPAD: Double = 0x03

    @ReadonlyAttribute
    public var key: String

    @ReadonlyAttribute
    public var code: String

    @ReadonlyAttribute
    public var location: Double

    @ReadonlyAttribute
    public var ctrlKey: Bool

    @ReadonlyAttribute
    public var shiftKey: Bool

    @ReadonlyAttribute
    public var altKey: Bool

    @ReadonlyAttribute
    public var metaKey: Bool

    @ReadonlyAttribute
    public var repeat: Bool

    @ReadonlyAttribute
    public var isComposing: Bool

    public func getModifierState(keyArg: String) -> Bool {
        jsObject["getModifierState"]!(keyArg.jsValue()).fromJSValue()!
    }

    public func initKeyboardEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, viewArg: Window? = nil, keyArg: String? = nil, locationArg: Double? = nil, ctrlKey: Bool? = nil, altKey: Bool? = nil, shiftKey: Bool? = nil, metaKey: Bool? = nil) {
        _ = jsObject["initKeyboardEvent"]!(typeArg.jsValue(), bubblesArg?.jsValue() ?? .undefined, cancelableArg?.jsValue() ?? .undefined, viewArg?.jsValue() ?? .undefined, keyArg?.jsValue() ?? .undefined, locationArg?.jsValue() ?? .undefined, ctrlKey?.jsValue() ?? .undefined, altKey?.jsValue() ?? .undefined, shiftKey?.jsValue() ?? .undefined, metaKey?.jsValue() ?? .undefined)
    }

    @ReadonlyAttribute
    public var charCode: Double

    @ReadonlyAttribute
    public var keyCode: Double
}
