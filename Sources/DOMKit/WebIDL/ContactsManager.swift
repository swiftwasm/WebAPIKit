// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ContactsManager: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.ContactsManager].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public func getProperties() -> JSPromise {
        let this = jsObject
        return this[Strings.getProperties].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func getProperties() async throws -> [ContactProperty] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getProperties].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable public func select(properties: [ContactProperty], options: ContactsSelectOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.select].function!(this: this, arguments: [properties.jsValue, options?.jsValue ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func select(properties: [ContactProperty], options: ContactsSelectOptions? = nil) async throws -> [ContactInfo] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.select].function!(this: this, arguments: [properties.jsValue, options?.jsValue ?? .undefined]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }
}
