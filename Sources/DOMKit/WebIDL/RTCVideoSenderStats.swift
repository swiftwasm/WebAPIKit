// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCVideoSenderStats: BridgedDictionary {
    public convenience init(mediaSourceId: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.mediaSourceId] = mediaSourceId.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _mediaSourceId = ReadWriteAttribute(jsObject: object, name: Strings.mediaSourceId)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var mediaSourceId: String
}