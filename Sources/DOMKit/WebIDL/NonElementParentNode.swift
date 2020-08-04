
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol NonElementParentNode: JSAbstractBridgedType {}

public extension NonElementParentNode {
    func getElementById(elementId: String) -> Element? {
        return objectRef.getElementById!(JSValue(from: elementId)).fromJSValue()
    }
}
