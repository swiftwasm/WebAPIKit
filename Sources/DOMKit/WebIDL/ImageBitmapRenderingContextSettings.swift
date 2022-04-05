// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ImageBitmapRenderingContextSettings: BridgedDictionary {
    public convenience init(alpha: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.alpha] = alpha.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _alpha = ReadWriteAttribute(jsObject: object, name: Strings.alpha)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var alpha: Bool
}
