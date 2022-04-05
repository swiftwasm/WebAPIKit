// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SaveFilePickerOptions: BridgedDictionary {
    public convenience init(suggestedName: String?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.suggestedName] = suggestedName.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _suggestedName = ReadWriteAttribute(jsObject: object, name: Strings.suggestedName)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var suggestedName: String?
}
