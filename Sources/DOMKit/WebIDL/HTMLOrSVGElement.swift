
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol HTMLOrSVGElement: JSAbstractBridgedType {}

public extension HTMLOrSVGElement {
    var dataset: DOMStringMap {
        return objectRef.dataset.fromJSValue()
    }

    var nonce: String {
        get {
            return objectRef.nonce.fromJSValue()
        }
        set {
            objectRef.nonce = JSValue(from: newValue)
        }
    }

    var autofocus: Bool {
        get {
            return objectRef.autofocus.fromJSValue()
        }
        set {
            objectRef.autofocus = JSValue(from: newValue)
        }
    }

    var tabIndex: Int32 {
        get {
            return objectRef.tabIndex.fromJSValue()
        }
        set {
            objectRef.tabIndex = JSValue(from: newValue)
        }
    }

    func focus(options: FocusOptions = [:]) {
        _ = objectRef.focus!(JSValue(from: options))
    }

    func blur() {
        _ = objectRef.blur!()
    }
}
