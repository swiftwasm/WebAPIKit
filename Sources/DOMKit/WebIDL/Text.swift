
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Text: CharacterData, Slotable {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Text.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _wholeText = ReadonlyAttribute(objectRef: objectRef, name: "wholeText")
        super.init(withCompatibleObject: objectRef)
    }

    public convenience init(data: String = "") {
        self.init(withCompatibleObject: Text.classRef.new(data.jsValue()))
    }

    public func splitText(offset: UInt32) -> Text {
        return objectRef.splitText!(offset.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var wholeText: String
}
