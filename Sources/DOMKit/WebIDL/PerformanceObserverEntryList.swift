// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PerformanceObserverEntryList: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.PerformanceObserverEntryList].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public func getEntries() -> PerformanceEntryList {
        let this = jsObject
        return this[Strings.getEntries].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getEntriesByType(type: String) -> PerformanceEntryList {
        let this = jsObject
        return this[Strings.getEntriesByType].function!(this: this, arguments: [type.jsValue]).fromJSValue()!
    }

    @inlinable public func getEntriesByName(name: String, type: String? = nil) -> PerformanceEntryList {
        let this = jsObject
        return this[Strings.getEntriesByName].function!(this: this, arguments: [name.jsValue, type?.jsValue ?? .undefined]).fromJSValue()!
    }
}
