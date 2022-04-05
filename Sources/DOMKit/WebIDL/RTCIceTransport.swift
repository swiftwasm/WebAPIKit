// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCIceTransport: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.RTCIceTransport].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onerror)
        _onicecandidate = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onicecandidate)
        _role = ReadonlyAttribute(jsObject: jsObject, name: Strings.role)
        _component = ReadonlyAttribute(jsObject: jsObject, name: Strings.component)
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _gatheringState = ReadonlyAttribute(jsObject: jsObject, name: Strings.gatheringState)
        _onstatechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onstatechange)
        _ongatheringstatechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ongatheringstatechange)
        _onselectedcandidatepairchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onselectedcandidatepairchange)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @inlinable public func gather(options: RTCIceGatherOptions? = nil) {
        let this = jsObject
        _ = this[Strings.gather].function!(this: this, arguments: [options?.jsValue ?? .undefined])
    }

    @inlinable public func start(remoteParameters: RTCIceParameters? = nil, role: RTCIceRole? = nil) {
        let this = jsObject
        _ = this[Strings.start].function!(this: this, arguments: [remoteParameters?.jsValue ?? .undefined, role?.jsValue ?? .undefined])
    }

    @inlinable public func stop() {
        let this = jsObject
        _ = this[Strings.stop].function!(this: this, arguments: [])
    }

    @inlinable public func addRemoteCandidate(remoteCandidate: RTCIceCandidateInit? = nil) {
        let this = jsObject
        _ = this[Strings.addRemoteCandidate].function!(this: this, arguments: [remoteCandidate?.jsValue ?? .undefined])
    }

    @ClosureAttribute1Optional
    public var onerror: EventHandler

    @ClosureAttribute1Optional
    public var onicecandidate: EventHandler

    @ReadonlyAttribute
    public var role: RTCIceRole

    @ReadonlyAttribute
    public var component: RTCIceComponent

    @ReadonlyAttribute
    public var state: RTCIceTransportState

    @ReadonlyAttribute
    public var gatheringState: RTCIceGathererState

    @inlinable public func getLocalCandidates() -> [RTCIceCandidate] {
        let this = jsObject
        return this[Strings.getLocalCandidates].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getRemoteCandidates() -> [RTCIceCandidate] {
        let this = jsObject
        return this[Strings.getRemoteCandidates].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getSelectedCandidatePair() -> RTCIceCandidatePair? {
        let this = jsObject
        return this[Strings.getSelectedCandidatePair].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getLocalParameters() -> RTCIceParameters? {
        let this = jsObject
        return this[Strings.getLocalParameters].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getRemoteParameters() -> RTCIceParameters? {
        let this = jsObject
        return this[Strings.getRemoteParameters].function!(this: this, arguments: []).fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var onstatechange: EventHandler

    @ClosureAttribute1Optional
    public var ongatheringstatechange: EventHandler

    @ClosureAttribute1Optional
    public var onselectedcandidatepairchange: EventHandler
}
