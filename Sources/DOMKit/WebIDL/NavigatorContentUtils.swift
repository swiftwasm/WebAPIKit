// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol NavigatorContentUtils: JSBridgedClass {}
public extension NavigatorContentUtils {
    @inlinable func registerProtocolHandler(scheme: String, url: String) {
        let this = jsObject
        _ = this[Strings.registerProtocolHandler].function!(this: this, arguments: [scheme.jsValue, url.jsValue])
    }

    @inlinable func unregisterProtocolHandler(scheme: String, url: String) {
        let this = jsObject
        _ = this[Strings.unregisterProtocolHandler].function!(this: this, arguments: [scheme.jsValue, url.jsValue])
    }
}
