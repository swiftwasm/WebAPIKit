// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCIceTransport: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.RTCIceTransport].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _role = ReadonlyAttribute(jsObject: jsObject, name: Strings.role)
        _component = ReadonlyAttribute(jsObject: jsObject, name: Strings.component)
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _gatheringState = ReadonlyAttribute(jsObject: jsObject, name: Strings.gatheringState)
        _onstatechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onstatechange)
        _ongatheringstatechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ongatheringstatechange)
        _onselectedcandidatepairchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onselectedcandidatepairchange)
        _onerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onerror)
        _onicecandidate = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onicecandidate)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var role: RTCIceRole

    @ReadonlyAttribute
    public var component: RTCIceComponent

    @ReadonlyAttribute
    public var state: RTCIceTransportState

    @ReadonlyAttribute
    public var gatheringState: RTCIceGathererState

    public func getLocalCandidates() -> [RTCIceCandidate] {
        jsObject[Strings.getLocalCandidates]!().fromJSValue()!
    }

    public func getRemoteCandidates() -> [RTCIceCandidate] {
        jsObject[Strings.getRemoteCandidates]!().fromJSValue()!
    }

    public func getSelectedCandidatePair() -> RTCIceCandidatePair? {
        jsObject[Strings.getSelectedCandidatePair]!().fromJSValue()!
    }

    public func getLocalParameters() -> RTCIceParameters? {
        jsObject[Strings.getLocalParameters]!().fromJSValue()!
    }

    public func getRemoteParameters() -> RTCIceParameters? {
        jsObject[Strings.getRemoteParameters]!().fromJSValue()!
    }

    @ClosureAttribute.Optional1
    public var onstatechange: EventHandler

    @ClosureAttribute.Optional1
    public var ongatheringstatechange: EventHandler

    @ClosureAttribute.Optional1
    public var onselectedcandidatepairchange: EventHandler

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    public func gather(options: RTCIceGatherOptions? = nil) {
        _ = jsObject[Strings.gather]!(options?.jsValue() ?? .undefined)
    }

    public func start(remoteParameters: RTCIceParameters? = nil, role: RTCIceRole? = nil) {
        _ = jsObject[Strings.start]!(remoteParameters?.jsValue() ?? .undefined, role?.jsValue() ?? .undefined)
    }

    public func stop() {
        _ = jsObject[Strings.stop]!()
    }

    public func addRemoteCandidate(remoteCandidate: RTCIceCandidateInit? = nil) {
        _ = jsObject[Strings.addRemoteCandidate]!(remoteCandidate?.jsValue() ?? .undefined)
    }

    @ClosureAttribute.Optional1
    public var onerror: EventHandler

    @ClosureAttribute.Optional1
    public var onicecandidate: EventHandler
}
