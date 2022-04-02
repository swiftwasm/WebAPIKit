// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaKeys: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.MediaKeys].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func createSession(sessionType: MediaKeySessionType? = nil) -> MediaKeySession {
        jsObject[Strings.createSession]!(sessionType?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func setServerCertificate(serverCertificate: BufferSource) -> JSPromise {
        jsObject[Strings.setServerCertificate]!(serverCertificate.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func setServerCertificate(serverCertificate: BufferSource) async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.setServerCertificate]!(serverCertificate.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}