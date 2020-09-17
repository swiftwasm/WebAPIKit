
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class RadioNodeList: NodeList {
    override public class var constructor: JSFunction { JSObject.global.RadioNodeList.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: "value")
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var value: String
}
