// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FilePickerOptions: BridgedDictionary {
    public convenience init(types: [FilePickerAcceptType], excludeAcceptAllOption: Bool, id: String, startIn: StartInDirectory) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.types] = types.jsValue()
        object[Strings.excludeAcceptAllOption] = excludeAcceptAllOption.jsValue()
        object[Strings.id] = id.jsValue()
        object[Strings.startIn] = startIn.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _types = ReadWriteAttribute(jsObject: object, name: Strings.types)
        _excludeAcceptAllOption = ReadWriteAttribute(jsObject: object, name: Strings.excludeAcceptAllOption)
        _id = ReadWriteAttribute(jsObject: object, name: Strings.id)
        _startIn = ReadWriteAttribute(jsObject: object, name: Strings.startIn)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var types: [FilePickerAcceptType]

    @ReadWriteAttribute
    public var excludeAcceptAllOption: Bool

    @ReadWriteAttribute
    public var id: String

    @ReadWriteAttribute
    public var startIn: StartInDirectory
}