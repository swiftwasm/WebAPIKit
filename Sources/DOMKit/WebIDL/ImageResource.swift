// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ImageResource: BridgedDictionary {
    public convenience init(src: String, sizes: String, type: String, label: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.src] = src.jsValue()
        object[Strings.sizes] = sizes.jsValue()
        object[Strings.type] = type.jsValue()
        object[Strings.label] = label.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _src = ReadWriteAttribute(jsObject: object, name: Strings.src)
        _sizes = ReadWriteAttribute(jsObject: object, name: Strings.sizes)
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _label = ReadWriteAttribute(jsObject: object, name: Strings.label)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var src: String

    @ReadWriteAttribute
    public var sizes: String

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var label: String
}