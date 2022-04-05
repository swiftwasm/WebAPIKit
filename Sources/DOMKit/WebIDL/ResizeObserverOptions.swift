// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ResizeObserverOptions: BridgedDictionary {
    public convenience init(box: ResizeObserverBoxOptions) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.box] = box.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _box = ReadWriteAttribute(jsObject: object, name: Strings.box)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var box: ResizeObserverBoxOptions
}
