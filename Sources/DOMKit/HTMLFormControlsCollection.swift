
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class HTMLFormControlsCollection: HTMLCollection {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLFormControlsCollection.function! }

    public required init(objectRef: JSObjectRef) {
        super.init(objectRef: objectRef)
    }

    public subscript(name: String) -> RadioNodeListOrElement?? {
        return objectRef[dynamicMember: name].fromJSValue()
    }
}
