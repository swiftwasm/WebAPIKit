
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol HTMLOrSVGElement: JSBridgedClass {}

public extension HTMLOrSVGElement {
    var dataset: DOMStringMap {
        return jsObject.dataset.fromJSValue()!
    }

    var nonce: String {
        get {
            return jsObject.nonce.fromJSValue()!
        }
        set {
            jsObject.nonce = newValue.jsValue()
        }
    }

    var autofocus: Bool {
        get {
            return jsObject.autofocus.fromJSValue()!
        }
        set {
            jsObject.autofocus = newValue.jsValue()
        }
    }

    var tabIndex: Int32 {
        get {
            return jsObject.tabIndex.fromJSValue()!
        }
        set {
            jsObject.tabIndex = newValue.jsValue()
        }
    }

    func focus(options: FocusOptions = [:]) {
        _ = jsObject.focus!(options.jsValue())
    }

    func blur() {
        _ = jsObject.blur!()
    }
}
