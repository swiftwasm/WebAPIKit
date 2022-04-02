// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCOfferOptions: BridgedDictionary {
    public convenience init(iceRestart: Bool, offerToReceiveAudio: Bool, offerToReceiveVideo: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.iceRestart] = iceRestart.jsValue()
        object[Strings.offerToReceiveAudio] = offerToReceiveAudio.jsValue()
        object[Strings.offerToReceiveVideo] = offerToReceiveVideo.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _iceRestart = ReadWriteAttribute(jsObject: object, name: Strings.iceRestart)
        _offerToReceiveAudio = ReadWriteAttribute(jsObject: object, name: Strings.offerToReceiveAudio)
        _offerToReceiveVideo = ReadWriteAttribute(jsObject: object, name: Strings.offerToReceiveVideo)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var iceRestart: Bool

    @ReadWriteAttribute
    public var offerToReceiveAudio: Bool

    @ReadWriteAttribute
    public var offerToReceiveVideo: Bool
}
