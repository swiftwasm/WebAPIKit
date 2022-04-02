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
        let this = jsObject
        _ = this[Strings.setIdentityProvider].function!(this: this, arguments: [provider.jsValue(), options?.jsValue() ?? .undefined])
    }

    public func getIdentityAssertion() -> JSPromise {
        let this = jsObject
        return this[Strings.getIdentityAssertion].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getIdentityAssertion() async throws -> String {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getIdentityAssertion].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var peerIdentity: JSPromise

    @ReadonlyAttribute
    public var idpLoginUrl: String?

    @ReadonlyAttribute
    public var idpErrorInfo: String?

    public convenience init(configuration: RTCConfiguration? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [configuration?.jsValue() ?? .undefined]))
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
        let this = jsObject
        _ = this[Strings.restartIce].function!(this: this, arguments: [])
    }

    public func getConfiguration() -> RTCConfiguration {
        let this = jsObject
        return this[Strings.getConfiguration].function!(this: this, arguments: []).fromJSValue()!
    }

    public func setConfiguration(configuration: RTCConfiguration? = nil) {
        let this = jsObject
        _ = this[Strings.setConfiguration].function!(this: this, arguments: [configuration?.jsValue() ?? .undefined])
    }

    public func close() {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [])
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
        let this = constructor
        return this[Strings.generateCertificate].function!(this: this, arguments: [keygenAlgorithm.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func generateCertificate(keygenAlgorithm: AlgorithmIdentifier) async throws -> RTCCertificate {
        let this = constructor
        let _promise: JSPromise = this[Strings.generateCertificate].function!(this: this, arguments: [keygenAlgorithm.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getSenders() -> [RTCRtpSender] {
        let this = jsObject
        return this[Strings.getSenders].function!(this: this, arguments: []).fromJSValue()!
    }

    public func getReceivers() -> [RTCRtpReceiver] {
        let this = jsObject
        return this[Strings.getReceivers].function!(this: this, arguments: []).fromJSValue()!
    }

    public func getTransceivers() -> [RTCRtpTransceiver] {
        let this = jsObject
        return this[Strings.getTransceivers].function!(this: this, arguments: []).fromJSValue()!
    }

    public func addTrack(track: MediaStreamTrack, streams: MediaStream...) -> RTCRtpSender {
        let this = jsObject
        return this[Strings.addTrack].function!(this: this, arguments: [track.jsValue()] + streams.map { $0.jsValue() }).fromJSValue()!
    }

    public func removeTrack(sender: RTCRtpSender) {
        let this = jsObject
        _ = this[Strings.removeTrack].function!(this: this, arguments: [sender.jsValue()])
    }

    public func addTransceiver(trackOrKind: __UNSUPPORTED_UNION__, init: RTCRtpTransceiverInit? = nil) -> RTCRtpTransceiver {
        let this = jsObject
        return this[Strings.addTransceiver].function!(this: this, arguments: [trackOrKind.jsValue(), `init`?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var ontrack: EventHandler

    @ReadonlyAttribute
    public var sctp: RTCSctpTransport?

    public func createDataChannel(label: String, dataChannelDict: RTCDataChannelInit? = nil) -> RTCDataChannel {
        let this = jsObject
        return this[Strings.createDataChannel].function!(this: this, arguments: [label.jsValue(), dataChannelDict?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var ondatachannel: EventHandler

    public func getStats(selector: MediaStreamTrack? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.getStats].function!(this: this, arguments: [selector?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getStats(selector: MediaStreamTrack? = nil) async throws -> RTCStatsReport {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getStats].function!(this: this, arguments: [selector?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
