
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Text: CharacterData, Slotable {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Text.function! }

    public required init(objectRef: JSObjectRef) {
        _wholeText = ReadonlyAttribute(objectRef: objectRef, name: "wholeText")
        super.init(objectRef: objectRef)
    }

    public convenience init(data: String = "") {
        self.init(objectRef: Text.classRef.new(data.jsValue()))
    }

    public func splitText(offset: UInt32) -> Text {
        return objectRef.splitText!(offset.jsValue()).fromJSValue()
    }

    @ReadonlyAttribute
    public var wholeText: String
}
