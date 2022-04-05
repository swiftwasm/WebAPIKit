// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCDtlsFingerprint: BridgedDictionary {
    public convenience init(algorithm: String, value: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.algorithm] = algorithm.jsValue
        object[Strings.value] = value.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _algorithm = ReadWriteAttribute(jsObject: object, name: Strings.algorithm)
        _value = ReadWriteAttribute(jsObject: object, name: Strings.value)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var algorithm: String

    @ReadWriteAttribute
    public var value: String
}
