
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol HTMLOrSVGElement: JSBridgedClass {}

public extension HTMLOrSVGElement {
    var dataset: DOMStringMap {
        return objectRef.dataset.fromJSValue()!
    }

    var nonce: String {
        get {
            return objectRef.nonce.fromJSValue()!
        }
        set {
            objectRef.nonce = newValue.jsValue()
        }
    }

    var autofocus: Bool {
        get {
            return objectRef.autofocus.fromJSValue()!
        }
        set {
            objectRef.autofocus = newValue.jsValue()
        }
    }

    var tabIndex: Int32 {
        get {
            return objectRef.tabIndex.fromJSValue()!
        }
        set {
            objectRef.tabIndex = newValue.jsValue()
        }
    }

    func focus(options: FocusOptions = [:]) {
        _ = objectRef.focus!(options.jsValue())
    }

    func blur() {
        _ = objectRef.blur!()
    }
}
