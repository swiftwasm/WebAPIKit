// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoFrameCopyToOptions: BridgedDictionary {
    public convenience init(rect: DOMRectInit, layout: [PlaneLayout]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.rect] = rect.jsValue()
        object[Strings.layout] = layout.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _rect = ReadWriteAttribute(jsObject: object, name: Strings.rect)
        _layout = ReadWriteAttribute(jsObject: object, name: Strings.layout)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var rect: DOMRectInit

    @ReadWriteAttribute
    public var layout: [PlaneLayout]
}
