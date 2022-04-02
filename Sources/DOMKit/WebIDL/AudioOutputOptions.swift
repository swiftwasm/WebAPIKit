// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioOutputOptions: BridgedDictionary {
    public convenience init(deviceId: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.deviceId] = deviceId.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _deviceId = ReadWriteAttribute(jsObject: object, name: Strings.deviceId)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var deviceId: String
}
