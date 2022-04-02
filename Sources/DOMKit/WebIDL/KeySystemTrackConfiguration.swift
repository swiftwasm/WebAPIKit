// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class KeySystemTrackConfiguration: BridgedDictionary {
    public convenience init(robustness: String, encryptionScheme: String?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.robustness] = robustness.jsValue()
        object[Strings.encryptionScheme] = encryptionScheme.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _robustness = ReadWriteAttribute(jsObject: object, name: Strings.robustness)
        _encryptionScheme = ReadWriteAttribute(jsObject: object, name: Strings.encryptionScheme)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var robustness: String

    @ReadWriteAttribute
    public var encryptionScheme: String?
}
