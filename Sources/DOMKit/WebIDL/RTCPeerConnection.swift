// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCPeerConnection: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.RTCPeerConnection].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _peerIdentity = ReadonlyAttribute(jsObject: jsObject, name: Strings.peerIdentity)
        _idpLoginUrl = ReadonlyAttribute(jsObject: jsObject, name: Strings.idpLoginUrl)
        _idpErrorInfo = ReadonlyAttribute(jsObject: jsObject, name: Strings.idpErrorInfo)
        _localDescription = ReadonlyAttribute(jsObject: jsObject, name: Strings.localDescription)
        _currentLocalDescription = ReadonlyAttribute(jsObject: jsObject, name: Strings.currentLocalDescription)
        _pendingLocalDescription = ReadonlyAttribute(jsObject: jsObject, name: Strings.pendingLocalDescription)
        _remoteDescription = ReadonlyAttribute(jsObject: jsObject, name: Strings.remoteDescription)
        _currentRemoteDescription = ReadonlyAttribute(jsObject: jsObject, name: Strings.currentRemoteDescription)
        _pendingRemoteDescription = ReadonlyAttribute(jsObject: jsObject, name: Strings.pendingRemoteDescription)
        _signalingState = ReadonlyAttribute(jsObject: jsObject, name: Strings.signalingState)
        _iceGatheringState = ReadonlyAttribute(jsObject: jsObject, name: Strings.iceGatheringState)
        _iceConnectionState = ReadonlyAttribute(jsObject: jsObject, name: Strings.iceConnectionState)
        _connectionState = ReadonlyAttribute(jsObject: jsObject, name: Strings.connectionState)
        _canTrickleIceCandidates = ReadonlyAttribute(jsObject: jsObject, name: Strings.canTrickleIceCandidates)
        _onnegotiationneeded = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onnegotiationneeded)
        _onicecandidate = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onicecandidate)
        _onicecandidateerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onicecandidateerror)
        _onsignalingstatechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onsignalingstatechange)
        _oniceconnectionstatechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.oniceconnectionstatechange)
        _onicegatheringstatechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onicegatheringstatechange)
        _onconnectionstatechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onconnectionstatechange)
        _ontrack = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ontrack)
        _sctp = ReadonlyAttribute(jsObject: jsObject, name: Strings.sctp)
        _ondatachannel = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ondatachannel)
        super.init(unsafelyWrapping: jsObject)
    }

    public func setIdentityProvider(provider: String, options: RTCIdentityProviderOptions? = nil) {
        _ = jsObject[Strings.setIdentityProvider]!(provider.jsValue(), options?.jsValue() ?? .undefined)
    }

    public func getIdentityAssertion() -> JSPromise {
        jsObject[Strings.getIdentityAssertion]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getIdentityAssertion() async throws -> String {
        let _promise: JSPromise = jsObject[Strings.getIdentityAssertion]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var peerIdentity: JSPromise

    @ReadonlyAttribute
    public var idpLoginUrl: String?

    @ReadonlyAttribute
    public var idpErrorInfo: String?

    public convenience init(configuration: RTCConfiguration? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(configuration?.jsValue() ?? .undefined))
    }

    // XXX: member 'createOffer' is ignored

    // XXX: member 'createOffer' is ignored

    // XXX: member 'createAnswer' is ignored

    // XXX: member 'createAnswer' is ignored

    // XXX: member 'setLocalDescription' is ignored

    // XXX: member 'setLocalDescription' is ignored

    @ReadonlyAttribute
    public var localDescription: RTCSessionDescription?

    @ReadonlyAttribute
    public var currentLocalDescription: RTCSessionDescription?

    @ReadonlyAttribute
    public var pendingLocalDescription: RTCSessionDescription?

    // XXX: member 'setRemoteDescription' is ignored

    // XXX: member 'setRemoteDescription' is ignored

    @ReadonlyAttribute
    public var remoteDescription: RTCSessionDescription?

    @ReadonlyAttribute
    public var currentRemoteDescription: RTCSessionDescription?

    @ReadonlyAttribute
    public var pendingRemoteDescription: RTCSessionDescription?

    // XXX: member 'addIceCandidate' is ignored

    // XXX: member 'addIceCandidate' is ignored

    @ReadonlyAttribute
    public var signalingState: RTCSignalingState

    @ReadonlyAttribute
    public var iceGatheringState: RTCIceGatheringState

    @ReadonlyAttribute
    public var iceConnectionState: RTCIceConnectionState

    @ReadonlyAttribute
    public var connectionState: RTCPeerConnectionState

    @ReadonlyAttribute
    public var canTrickleIceCandidates: Bool?

    public func restartIce() {
        _ = jsObject[Strings.restartIce]!()
    }

    public func getConfiguration() -> RTCConfiguration {
        jsObject[Strings.getConfiguration]!().fromJSValue()!
    }

    public func setConfiguration(configuration: RTCConfiguration? = nil) {
        _ = jsObject[Strings.setConfiguration]!(configuration?.jsValue() ?? .undefined)
    }

    public func close() {
        _ = jsObject[Strings.close]!()
    }

    @ClosureAttribute1Optional
    public var onnegotiationneeded: EventHandler

    @ClosureAttribute1Optional
    public var onicecandidate: EventHandler

    @ClosureAttribute1Optional
    public var onicecandidateerror: EventHandler

    @ClosureAttribute1Optional
    public var onsignalingstatechange: EventHandler

    @ClosureAttribute1Optional
    public var oniceconnectionstatechange: EventHandler

    @ClosureAttribute1Optional
    public var onicegatheringstatechange: EventHandler

    @ClosureAttribute1Optional
    public var onconnectionstatechange: EventHandler

    // XXX: member 'createOffer' is ignored

    // XXX: member 'createOffer' is ignored

    // XXX: member 'setLocalDescription' is ignored

    // XXX: member 'setLocalDescription' is ignored

    // XXX: member 'createAnswer' is ignored

    // XXX: member 'createAnswer' is ignored

    // XXX: member 'setRemoteDescription' is ignored

    // XXX: member 'setRemoteDescription' is ignored

    // XXX: member 'addIceCandidate' is ignored

    // XXX: member 'addIceCandidate' is ignored

    public static func generateCertificate(keygenAlgorithm: AlgorithmIdentifier) -> JSPromise {
        constructor[Strings.generateCertificate]!(keygenAlgorithm.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func generateCertificate(keygenAlgorithm: AlgorithmIdentifier) async throws -> RTCCertificate {
        let _promise: JSPromise = constructor[Strings.generateCertificate]!(keygenAlgorithm.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getSenders() -> [RTCRtpSender] {
        jsObject[Strings.getSenders]!().fromJSValue()!
    }

    public func getReceivers() -> [RTCRtpReceiver] {
        jsObject[Strings.getReceivers]!().fromJSValue()!
    }

    public func getTransceivers() -> [RTCRtpTransceiver] {
        jsObject[Strings.getTransceivers]!().fromJSValue()!
    }

    public func addTrack(track: MediaStreamTrack, streams: MediaStream...) -> RTCRtpSender {
        jsObject[Strings.addTrack]!(track.jsValue(), streams.jsValue()).fromJSValue()!
    }

    public func removeTrack(sender: RTCRtpSender) {
        _ = jsObject[Strings.removeTrack]!(sender.jsValue())
    }

    public func addTransceiver(trackOrKind: __UNSUPPORTED_UNION__, init: RTCRtpTransceiverInit? = nil) -> RTCRtpTransceiver {
        jsObject[Strings.addTransceiver]!(trackOrKind.jsValue(), `init`?.jsValue() ?? .undefined).fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var ontrack: EventHandler

    @ReadonlyAttribute
    public var sctp: RTCSctpTransport?

    public func createDataChannel(label: String, dataChannelDict: RTCDataChannelInit? = nil) -> RTCDataChannel {
        jsObject[Strings.createDataChannel]!(label.jsValue(), dataChannelDict?.jsValue() ?? .undefined).fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var ondatachannel: EventHandler

    public func getStats(selector: MediaStreamTrack? = nil) -> JSPromise {
        jsObject[Strings.getStats]!(selector?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getStats(selector: MediaStreamTrack? = nil) async throws -> RTCStatsReport {
        let _promise: JSPromise = jsObject[Strings.getStats]!(selector?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
