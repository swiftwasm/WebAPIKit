// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BarcodeDetectorOptions: BridgedDictionary {
    public convenience init(formats: [BarcodeFormat]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.formats] = formats.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _formats = ReadWriteAttribute(jsObject: object, name: Strings.formats)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var formats: [BarcodeFormat]
}
