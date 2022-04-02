// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PerformanceObserver: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.PerformanceObserver].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _supportedEntryTypes = ReadonlyAttribute(jsObject: jsObject, name: Strings.supportedEntryTypes)
        self.jsObject = jsObject
    }

    public convenience init(callback: PerformanceObserverCallback) {
        self.init(unsafelyWrapping: Self.constructor.new(callback.jsValue()))
    }

    public func observe(options: PerformanceObserverInit? = nil) {
        _ = jsObject[Strings.observe]!(options?.jsValue() ?? .undefined)
    }

    public func disconnect() {
        _ = jsObject[Strings.disconnect]!()
    }

    public func takeRecords() -> PerformanceEntryList {
        jsObject[Strings.takeRecords]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var supportedEntryTypes: [String]
}