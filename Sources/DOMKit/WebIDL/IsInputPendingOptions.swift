// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IsInputPendingOptions: BridgedDictionary {
    public convenience init(includeContinuous: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.includeContinuous] = includeContinuous.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _includeContinuous = ReadWriteAttribute(jsObject: object, name: Strings.includeContinuous)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var includeContinuous: Bool
}