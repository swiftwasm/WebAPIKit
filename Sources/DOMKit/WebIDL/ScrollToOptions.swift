// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ScrollToOptions: BridgedDictionary {
    public convenience init(left: Double, top: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.left] = left.jsValue
        object[Strings.top] = top.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _left = ReadWriteAttribute(jsObject: object, name: Strings.left)
        _top = ReadWriteAttribute(jsObject: object, name: Strings.top)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var left: Double

    @ReadWriteAttribute
    public var top: Double
}
