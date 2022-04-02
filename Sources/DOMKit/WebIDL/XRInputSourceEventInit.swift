// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRInputSourceEventInit: BridgedDictionary {
    public convenience init(frame: XRFrame, inputSource: XRInputSource) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.frame] = frame.jsValue()
        object[Strings.inputSource] = inputSource.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _frame = ReadWriteAttribute(jsObject: object, name: Strings.frame)
        _inputSource = ReadWriteAttribute(jsObject: object, name: Strings.inputSource)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var frame: XRFrame

    @ReadWriteAttribute
    public var inputSource: XRInputSource
}