// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaStreamConstraints: BridgedDictionary {
    public convenience init(preferCurrentTab: Bool, peerIdentity: String, video: __UNSUPPORTED_UNION__, audio: __UNSUPPORTED_UNION__) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.preferCurrentTab] = preferCurrentTab.jsValue()
        object[Strings.peerIdentity] = peerIdentity.jsValue()
        object[Strings.video] = video.jsValue()
        object[Strings.audio] = audio.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _preferCurrentTab = ReadWriteAttribute(jsObject: object, name: Strings.preferCurrentTab)
        _peerIdentity = ReadWriteAttribute(jsObject: object, name: Strings.peerIdentity)
        _video = ReadWriteAttribute(jsObject: object, name: Strings.video)
        _audio = ReadWriteAttribute(jsObject: object, name: Strings.audio)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var preferCurrentTab: Bool

    @ReadWriteAttribute
    public var peerIdentity: String

    @ReadWriteAttribute
    public var video: __UNSUPPORTED_UNION__

    @ReadWriteAttribute
    public var audio: __UNSUPPORTED_UNION__
}
