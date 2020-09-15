
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol ElementContentEditable: JSBridgedClass {}

public extension ElementContentEditable {
    var contentEditable: String {
        get {
            return jsObject.contentEditable.fromJSValue()!
        }
        set {
            jsObject.contentEditable = newValue.jsValue()
        }
    }

    var enterKeyHint: String {
        get {
            return jsObject.enterKeyHint.fromJSValue()!
        }
        set {
            jsObject.enterKeyHint = newValue.jsValue()
        }
    }

    var isContentEditable: Bool {
        return jsObject.isContentEditable.fromJSValue()!
    }

    var inputMode: String {
        get {
            return jsObject.inputMode.fromJSValue()!
        }
        set {
            jsObject.inputMode = newValue.jsValue()
        }
    }
}
