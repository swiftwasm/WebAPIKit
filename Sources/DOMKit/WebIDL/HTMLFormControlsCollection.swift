
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLFormControlsCollection: HTMLCollection {
    override public class var constructor: JSFunction { JSObject.global.HTMLFormControlsCollection.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        super.init(withCompatibleObject: jsObject)
    }

    public subscript(_: String) -> RadioNodeListOrElement?? {
        return jsObject.name.fromJSValue()!
    }
}
