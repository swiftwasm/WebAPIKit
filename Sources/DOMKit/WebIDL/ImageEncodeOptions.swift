// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ImageEncodeOptions: BridgedDictionary {
    private enum Keys {
        static let quality: JSString = "quality"
        static let type: JSString = "type"
    }

    public convenience init(type: String, quality: Double) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.type] = type.jsValue()
        object[Keys.quality] = quality.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Keys.type)
        _quality = ReadWriteAttribute(jsObject: object, name: Keys.quality)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var quality: Double
}
