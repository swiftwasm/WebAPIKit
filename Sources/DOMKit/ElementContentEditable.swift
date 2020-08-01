
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public protocol ElementContentEditable: JSBridgedType {}

public extension ElementContentEditable {
    var contentEditable: String {
        get {
            return objectRef.contentEditable.fromJSValue()
        }
        set {
            objectRef.contentEditable = newValue.jsValue()
        }
    }

    var enterKeyHint: String {
        get {
            return objectRef.enterKeyHint.fromJSValue()
        }
        set {
            objectRef.enterKeyHint = newValue.jsValue()
        }
    }

    var isContentEditable: Bool {
        return objectRef.isContentEditable.fromJSValue()
    }

    var inputMode: String {
        get {
            return objectRef.inputMode.fromJSValue()
        }
        set {
            objectRef.inputMode = newValue.jsValue()
        }
    }
}
