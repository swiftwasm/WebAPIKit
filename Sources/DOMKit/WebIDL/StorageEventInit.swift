// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StorageEventInit: JSObject {
    public init(key: String?, oldValue: String?, newValue: String?, url: String, storageArea: Storage?) {
        let object = JSObject.global.Object.function!.new()
        object["key"] = key.jsValue()
        object["oldValue"] = oldValue.jsValue()
        object["newValue"] = newValue.jsValue()
        object["url"] = url.jsValue()
        object["storageArea"] = storageArea.jsValue()
        _key = ReadWriteAttribute(jsObject: object, name: "key")
        _oldValue = ReadWriteAttribute(jsObject: object, name: "oldValue")
        _newValue = ReadWriteAttribute(jsObject: object, name: "newValue")
        _url = ReadWriteAttribute(jsObject: object, name: "url")
        _storageArea = ReadWriteAttribute(jsObject: object, name: "storageArea")
        super.init(cloning: object)
    }

    @ReadWriteAttribute
    public var key: String?

    @ReadWriteAttribute
    public var oldValue: String?

    @ReadWriteAttribute
    public var newValue: String?

    @ReadWriteAttribute
    public var url: String

    @ReadWriteAttribute
    public var storageArea: Storage?
}
