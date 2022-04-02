// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FaceDetectorOptions: BridgedDictionary {
    public convenience init(maxDetectedFaces: UInt16, fastMode: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.maxDetectedFaces] = maxDetectedFaces.jsValue()
        object[Strings.fastMode] = fastMode.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _maxDetectedFaces = ReadWriteAttribute(jsObject: object, name: Strings.maxDetectedFaces)
        _fastMode = ReadWriteAttribute(jsObject: object, name: Strings.fastMode)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var maxDetectedFaces: UInt16

    @ReadWriteAttribute
    public var fastMode: Bool
}
