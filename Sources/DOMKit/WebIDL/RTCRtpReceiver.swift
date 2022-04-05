// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpReceiver: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.RTCRtpReceiver].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _transform = ReadWriteAttribute(jsObject: jsObject, name: Strings.transform)
        _track = ReadonlyAttribute(jsObject: jsObject, name: Strings.track)
        _transport = ReadonlyAttribute(jsObject: jsObject, name: Strings.transport)
        self.jsObject = jsObject
    }

    @ReadWriteAttribute
    public var transform: RTCRtpTransform?

    @ReadonlyAttribute
    public var track: MediaStreamTrack

    @ReadonlyAttribute
    public var transport: RTCDtlsTransport?

    @inlinable public static func getCapabilities(kind: String) -> RTCRtpCapabilities? {
        let this = constructor
        return this[Strings.getCapabilities].function!(this: this, arguments: [kind.jsValue]).fromJSValue()!
    }

    @inlinable public func getParameters() -> RTCRtpReceiveParameters {
        let this = jsObject
        return this[Strings.getParameters].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getContributingSources() -> [RTCRtpContributingSource] {
        let this = jsObject
        return this[Strings.getContributingSources].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getSynchronizationSources() -> [RTCRtpSynchronizationSource] {
        let this = jsObject
        return this[Strings.getSynchronizationSources].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getStats() -> JSPromise {
        let this = jsObject
        return this[Strings.getStats].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func getStats() async throws -> RTCStatsReport {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getStats].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }
}
