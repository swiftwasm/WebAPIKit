// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCPeerConnectionIceEventInit: BridgedDictionary {
    public convenience init(candidate: RTCIceCandidate?, url: String?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.candidate] = candidate.jsValue
        object[Strings.url] = url.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _candidate = ReadWriteAttribute(jsObject: object, name: Strings.candidate)
        _url = ReadWriteAttribute(jsObject: object, name: Strings.url)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var candidate: RTCIceCandidate?

    @ReadWriteAttribute
    public var url: String?
}
