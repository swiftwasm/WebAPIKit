
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol NonDocumentTypeChildNode: JSBridgedClass {}

public extension NonDocumentTypeChildNode {
    var previousElementSibling: Element? {
        return jsObject.previousElementSibling.fromJSValue()!
    }

    var nextElementSibling: Element? {
        return jsObject.nextElementSibling.fromJSValue()!
    }
}
