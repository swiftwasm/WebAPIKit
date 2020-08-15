
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class RadioNodeList: NodeList {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.RadioNodeList.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _value = ReadWriteAttribute(objectRef: objectRef, name: "value")
        super.init(withCompatibleObject: objectRef)
    }

    @ReadWriteAttribute
    public var value: String
}
