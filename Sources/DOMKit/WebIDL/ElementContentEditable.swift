
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol ElementContentEditable: JSAbstractBridgedType {}

public extension ElementContentEditable {
    var contentEditable: String {
        get {
            return objectRef.contentEditable.fromJSValue()
        }
        set {
            objectRef.contentEditable = JSValue(from: newValue)
        }
    }

    var enterKeyHint: String {
        get {
            return objectRef.enterKeyHint.fromJSValue()
        }
        set {
            objectRef.enterKeyHint = JSValue(from: newValue)
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
            objectRef.inputMode = JSValue(from: newValue)
        }
    }
}
