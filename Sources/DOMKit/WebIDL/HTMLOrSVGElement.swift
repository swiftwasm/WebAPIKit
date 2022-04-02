// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol HTMLOrSVGElement: JSBridgedClass {}
public extension HTMLOrSVGElement {
    var dataset: DOMStringMap { ReadonlyAttribute[Strings.dataset, in: jsObject] }

    var nonce: String {
        get { ReadWriteAttribute[Strings.nonce, in: jsObject] }
        set { ReadWriteAttribute[Strings.nonce, in: jsObject] = newValue }
    }

    var autofocus: Bool {
        get { ReadWriteAttribute[Strings.autofocus, in: jsObject] }
        set { ReadWriteAttribute[Strings.autofocus, in: jsObject] = newValue }
    }

    var tabIndex: Int32 {
        get { ReadWriteAttribute[Strings.tabIndex, in: jsObject] }
        set { ReadWriteAttribute[Strings.tabIndex, in: jsObject] = newValue }
    }

    func focus(options: FocusOptions? = nil) {
        let this = jsObject
        _ = this[Strings.focus].function!(this: this, arguments: [options?.jsValue() ?? .undefined])
    }

    func blur() {
        let this = jsObject
        _ = this[Strings.blur].function!(this: this, arguments: [])
    }
}
