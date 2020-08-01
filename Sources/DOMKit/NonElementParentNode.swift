
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public protocol NonElementParentNode: JSBridgedType {}

public extension NonElementParentNode {
    func getElementById(elementId: String) -> Element? {
        return objectRef.getElementById!(elementId.jsValue()).fromJSValue()
    }
}
