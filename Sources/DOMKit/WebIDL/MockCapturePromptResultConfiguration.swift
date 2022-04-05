// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MockCapturePromptResultConfiguration: BridgedDictionary {
    public convenience init(getUserMedia: MockCapturePromptResult, getDisplayMedia: MockCapturePromptResult) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.getUserMedia] = getUserMedia.jsValue
        object[Strings.getDisplayMedia] = getDisplayMedia.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _getUserMedia = ReadWriteAttribute(jsObject: object, name: Strings.getUserMedia)
        _getDisplayMedia = ReadWriteAttribute(jsObject: object, name: Strings.getDisplayMedia)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var getUserMedia: MockCapturePromptResult

    @ReadWriteAttribute
    public var getDisplayMedia: MockCapturePromptResult
}
