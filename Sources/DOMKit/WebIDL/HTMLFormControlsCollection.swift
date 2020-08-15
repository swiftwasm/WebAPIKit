
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLFormControlsCollection: HTMLCollection {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLFormControlsCollection.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        super.init(withCompatibleObject: objectRef)
    }

    public subscript(_: String) -> RadioNodeListOrElement?? {
        return objectRef.name.fromJSValue()!
    }
}
