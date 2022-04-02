// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ContactsManager: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.ContactsManager].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func getProperties() -> JSPromise {
        jsObject[Strings.getProperties]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getProperties() async throws -> [ContactProperty] {
        let _promise: JSPromise = jsObject[Strings.getProperties]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func select(properties: [ContactProperty], options: ContactsSelectOptions? = nil) -> JSPromise {
        jsObject[Strings.select]!(properties.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func select(properties: [ContactProperty], options: ContactsSelectOptions? = nil) async throws -> [ContactInfo] {
        let _promise: JSPromise = jsObject[Strings.select]!(properties.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}