
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public protocol NonDocumentTypeChildNode: JSBridgedType {}

public extension NonDocumentTypeChildNode {
    var previousElementSibling: Element? {
        return objectRef.previousElementSibling.fromJSValue()
    }

    var nextElementSibling: Element? {
        return objectRef.nextElementSibling.fromJSValue()
    }
}
