
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLFormControlsCollection: HTMLCollection {
    override public class var constructor: JSFunction { JSObject.global.HTMLFormControlsCollection.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public subscript(_: String) -> RadioNodeListOrElement?? {
        return jsObject.name.fromJSValue()!
    }
}
