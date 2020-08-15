
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class MutationObserver: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.MutationObserver.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init(callback: @escaping MutationCallback) {
        self.init(withCompatibleObject: MutationObserver.classRef.new(JSClosure { callback($0[0].fromJSValue()!, $0[1].fromJSValue()!) }))
    }

    public func observe(target: Node, options: MutationObserverInit = [:]) {
        _ = objectRef.observe!(target.jsValue(), options.jsValue())
    }

    public func disconnect() {
        _ = objectRef.disconnect!()
    }

    public func takeRecords() -> [MutationRecord] {
        return objectRef.takeRecords!().fromJSValue()!
    }
}
