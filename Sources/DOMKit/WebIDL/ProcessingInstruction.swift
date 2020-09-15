
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class ProcessingInstruction: CharacterData {
    override public class var constructor: JSFunction { JSObject.global.ProcessingInstruction.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _target = ReadonlyAttribute(jsObject: jsObject, name: "target")
        super.init(withCompatibleObject: jsObject)
    }

    @ReadonlyAttribute
    public var target: String
}
