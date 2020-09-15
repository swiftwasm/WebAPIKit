
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Text: CharacterData, Slotable {
    override public class var constructor: JSFunction { JSObject.global.Text.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _wholeText = ReadonlyAttribute(jsObject: jsObject, name: "wholeText")
        super.init(withCompatibleObject: jsObject)
    }

    public convenience init(data: String = "") {
        self.init(withCompatibleObject: Text.constructor.new(data.jsValue()))
    }

    public func splitText(offset: UInt32) -> Text {
        return jsObject.splitText!(offset.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var wholeText: String
}
