
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol NonDocumentTypeChildNode: JSAbstractBridgedType {}

public extension NonDocumentTypeChildNode {
    var previousElementSibling: Element? {
        return objectRef.previousElementSibling.fromJSValue()
    }

    var nextElementSibling: Element? {
        return objectRef.nextElementSibling.fromJSValue()
    }
}
