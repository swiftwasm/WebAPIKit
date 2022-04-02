// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ReportingObserver: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.ReportingObserver].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    // XXX: constructor is ignored

    public func observe() {
        let this = jsObject
        _ = this[Strings.observe].function!(this: this, arguments: [])
    }

    public func disconnect() {
        let this = jsObject
        _ = this[Strings.disconnect].function!(this: this, arguments: [])
    }

    public func takeRecords() -> ReportList {
        let this = jsObject
        return this[Strings.takeRecords].function!(this: this, arguments: []).fromJSValue()!
    }
}
