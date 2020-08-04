
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class HTMLFormControlsCollection: HTMLCollection {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLFormControlsCollection.function! }

    public required init(objectRef: JSObjectRef) {
        super.init(objectRef: objectRef)
    }

    public subscript(_: String) -> RadioNodeListOrElement?? {
        return objectRef.name.fromJSValue()
    }
}
