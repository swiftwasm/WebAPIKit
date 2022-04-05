// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SFrameTransformErrorEventInit: BridgedDictionary {
    public convenience init(errorType: SFrameTransformErrorEventType, frame: JSValue, keyID: CryptoKeyID?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.errorType] = errorType.jsValue
        object[Strings.frame] = frame.jsValue
        object[Strings.keyID] = keyID.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _errorType = ReadWriteAttribute(jsObject: object, name: Strings.errorType)
        _frame = ReadWriteAttribute(jsObject: object, name: Strings.frame)
        _keyID = ReadWriteAttribute(jsObject: object, name: Strings.keyID)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var errorType: SFrameTransformErrorEventType

    @ReadWriteAttribute
    public var frame: JSValue

    @ReadWriteAttribute
    public var keyID: CryptoKeyID?
}
