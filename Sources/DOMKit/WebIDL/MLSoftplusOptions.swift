// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MLSoftplusOptions: BridgedDictionary {
    public convenience init(steepness: Float) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.steepness] = steepness.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _steepness = ReadWriteAttribute(jsObject: object, name: Strings.steepness)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var steepness: Float
}
