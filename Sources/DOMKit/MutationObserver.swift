
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class MutationObserver: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.MutationObserver.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init(callback: @escaping MutationCallback) {
        self.init(objectRef: MutationObserver.classRef.new(JSFunctionRef.from { callback($0[0].fromJSValue(), $0[1].fromJSValue()); return .undefined }))
    }

    public func observe(target: Node, options: MutationObserverInit = [:]) {
        _ = objectRef.observe!(target.jsValue(), options.jsValue())
    }

    public func disconnect() {
        _ = objectRef.disconnect!()
    }

    public func takeRecords() -> [MutationRecord] {
        return objectRef.takeRecords!().fromJSValue()
    }
}
