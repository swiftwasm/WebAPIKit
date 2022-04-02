// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FontMetadata: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.FontMetadata].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _postscriptName = ReadonlyAttribute(jsObject: jsObject, name: Strings.postscriptName)
        _fullName = ReadonlyAttribute(jsObject: jsObject, name: Strings.fullName)
        _family = ReadonlyAttribute(jsObject: jsObject, name: Strings.family)
        _style = ReadonlyAttribute(jsObject: jsObject, name: Strings.style)
        self.jsObject = jsObject
    }

    public func blob() -> JSPromise {
        jsObject[Strings.blob]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func blob() async throws -> Blob {
        let _promise: JSPromise = jsObject[Strings.blob]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var postscriptName: String

    @ReadonlyAttribute
    public var fullName: String

    @ReadonlyAttribute
    public var family: String

    @ReadonlyAttribute
    public var style: String
}