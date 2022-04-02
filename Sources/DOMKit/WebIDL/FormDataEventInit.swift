// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FormDataEventInit: BridgedDictionary {
    private enum Keys {
        static let formData: JSString = "formData"
    }

    public convenience init(formData: FormData) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.formData] = formData.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _formData = ReadWriteAttribute(jsObject: object, name: Keys.formData)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var formData: FormData
}