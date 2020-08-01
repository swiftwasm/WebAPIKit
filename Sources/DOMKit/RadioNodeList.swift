
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class RadioNodeList: NodeList {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.RadioNodeList.function! }

    public required init(objectRef: JSObjectRef) {
        _value = ReadWriteAttribute(objectRef: objectRef, name: "value")
        super.init(objectRef: objectRef)
    }

    @ReadWriteAttribute
    public var value: String
}
