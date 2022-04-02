// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpScriptTransformer: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.RTCRtpScriptTransformer].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _readable = ReadonlyAttribute(jsObject: jsObject, name: Strings.readable)
        _writable = ReadonlyAttribute(jsObject: jsObject, name: Strings.writable)
        _options = ReadonlyAttribute(jsObject: jsObject, name: Strings.options)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var readable: ReadableStream

    @ReadonlyAttribute
    public var writable: WritableStream

    @ReadonlyAttribute
    public var options: JSValue

    @inlinable public func generateKeyFrame(rids: [String]? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.generateKeyFrame].function!(this: this, arguments: [rids?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func generateKeyFrame(rids: [String]? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.generateKeyFrame].function!(this: this, arguments: [rids?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    @inlinable public func sendKeyFrameRequest() -> JSPromise {
        let this = jsObject
        return this[Strings.sendKeyFrameRequest].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func sendKeyFrameRequest() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.sendKeyFrameRequest].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }
}
