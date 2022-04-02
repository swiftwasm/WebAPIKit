// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Permissions: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Permissions].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func request(permissionDesc: JSObject) -> JSPromise {
        jsObject[Strings.request]!(permissionDesc.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func request(permissionDesc: JSObject) async throws -> PermissionStatus {
        let _promise: JSPromise = jsObject[Strings.request]!(permissionDesc.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func revoke(permissionDesc: JSObject) -> JSPromise {
        jsObject[Strings.revoke]!(permissionDesc.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func revoke(permissionDesc: JSObject) async throws -> PermissionStatus {
        let _promise: JSPromise = jsObject[Strings.revoke]!(permissionDesc.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func query(permissionDesc: JSObject) -> JSPromise {
        jsObject[Strings.query]!(permissionDesc.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func query(permissionDesc: JSObject) async throws -> PermissionStatus {
        let _promise: JSPromise = jsObject[Strings.query]!(permissionDesc.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
