// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextFormatUpdateEventInit: BridgedDictionary {
    public convenience init(textFormats: [TextFormat]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.textFormats] = textFormats.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _textFormats = ReadWriteAttribute(jsObject: object, name: Strings.textFormats)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var textFormats: [TextFormat]
}