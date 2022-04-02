// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCConfiguration: BridgedDictionary {
    public convenience init(iceServers: [RTCIceServer], iceTransportPolicy: RTCIceTransportPolicy, bundlePolicy: RTCBundlePolicy, rtcpMuxPolicy: RTCRtcpMuxPolicy, certificates: [RTCCertificate], iceCandidatePoolSize: UInt8, peerIdentity: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.iceServers] = iceServers.jsValue()
        object[Strings.iceTransportPolicy] = iceTransportPolicy.jsValue()
        object[Strings.bundlePolicy] = bundlePolicy.jsValue()
        object[Strings.rtcpMuxPolicy] = rtcpMuxPolicy.jsValue()
        object[Strings.certificates] = certificates.jsValue()
        object[Strings.iceCandidatePoolSize] = iceCandidatePoolSize.jsValue()
        object[Strings.peerIdentity] = peerIdentity.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _iceServers = ReadWriteAttribute(jsObject: object, name: Strings.iceServers)
        _iceTransportPolicy = ReadWriteAttribute(jsObject: object, name: Strings.iceTransportPolicy)
        _bundlePolicy = ReadWriteAttribute(jsObject: object, name: Strings.bundlePolicy)
        _rtcpMuxPolicy = ReadWriteAttribute(jsObject: object, name: Strings.rtcpMuxPolicy)
        _certificates = ReadWriteAttribute(jsObject: object, name: Strings.certificates)
        _iceCandidatePoolSize = ReadWriteAttribute(jsObject: object, name: Strings.iceCandidatePoolSize)
        _peerIdentity = ReadWriteAttribute(jsObject: object, name: Strings.peerIdentity)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var iceServers: [RTCIceServer]

    @ReadWriteAttribute
    public var iceTransportPolicy: RTCIceTransportPolicy

    @ReadWriteAttribute
    public var bundlePolicy: RTCBundlePolicy

    @ReadWriteAttribute
    public var rtcpMuxPolicy: RTCRtcpMuxPolicy

    @ReadWriteAttribute
    public var certificates: [RTCCertificate]

    @ReadWriteAttribute
    public var iceCandidatePoolSize: UInt8

    @ReadWriteAttribute
    public var peerIdentity: String
}