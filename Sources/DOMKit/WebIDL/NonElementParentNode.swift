
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol NonElementParentNode: JSBridgedClass {}

public extension NonElementParentNode {
    func getElementById(elementId: String) -> Element? {
        return objectRef.getElementById!(elementId.jsValue()).fromJSValue()!
    }
}
