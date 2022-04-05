// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpContributingSourceStats: BridgedDictionary {
    public convenience init(contributorSsrc: UInt32, inboundRtpStreamId: String, packetsContributedTo: UInt32, audioLevel: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.contributorSsrc] = contributorSsrc.jsValue
        object[Strings.inboundRtpStreamId] = inboundRtpStreamId.jsValue
        object[Strings.packetsContributedTo] = packetsContributedTo.jsValue
        object[Strings.audioLevel] = audioLevel.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _contributorSsrc = ReadWriteAttribute(jsObject: object, name: Strings.contributorSsrc)
        _inboundRtpStreamId = ReadWriteAttribute(jsObject: object, name: Strings.inboundRtpStreamId)
        _packetsContributedTo = ReadWriteAttribute(jsObject: object, name: Strings.packetsContributedTo)
        _audioLevel = ReadWriteAttribute(jsObject: object, name: Strings.audioLevel)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var contributorSsrc: UInt32

    @ReadWriteAttribute
    public var inboundRtpStreamId: String

    @ReadWriteAttribute
    public var packetsContributedTo: UInt32

    @ReadWriteAttribute
    public var audioLevel: Double
}
