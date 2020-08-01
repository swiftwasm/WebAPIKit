
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class ProcessingInstruction: CharacterData {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.ProcessingInstruction.function! }

    public required init(objectRef: JSObjectRef) {
        _target = ReadonlyAttribute(objectRef: objectRef, name: "target")
        super.init(objectRef: objectRef)
    }

    @ReadonlyAttribute
    public var target: String
}
