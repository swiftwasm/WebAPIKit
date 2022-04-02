// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ClipboardItem: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.ClipboardItem].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _presentationStyle = ReadonlyAttribute(jsObject: jsObject, name: Strings.presentationStyle)
        _types = ReadonlyAttribute(jsObject: jsObject, name: Strings.types)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(items: [String: ClipboardItemData], options: ClipboardItemOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [items.jsValue(), options?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var presentationStyle: PresentationStyle

    @ReadonlyAttribute
    public var types: [String]

    @inlinable public func getType(type: String) -> JSPromise {
        let this = jsObject
        return this[Strings.getType].function!(this: this, arguments: [type.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func getType(type: String) async throws -> Blob {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getType].function!(this: this, arguments: [type.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
