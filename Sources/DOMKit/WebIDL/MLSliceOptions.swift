// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MLSliceOptions: BridgedDictionary {
    public convenience init(axes: [Int32]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.axes] = axes.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _axes = ReadWriteAttribute(jsObject: object, name: Strings.axes)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var axes: [Int32]
}
