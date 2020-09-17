
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class MutationObserver: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.MutationObserver.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(callback: @escaping MutationCallback) {
        self.init(unsafelyWrapping: MutationObserver.constructor.new(JSClosure { callback($0[0].fromJSValue()!, $0[1].fromJSValue()!) }))
    }

    public func observe(target: Node, options: MutationObserverInit = [:]) {
        _ = jsObject.observe!(target.jsValue(), options.jsValue())
    }

    public func disconnect() {
        _ = jsObject.disconnect!()
    }

    public func takeRecords() -> [MutationRecord] {
        return jsObject.takeRecords!().fromJSValue()!
    }
}
