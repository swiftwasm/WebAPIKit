// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NDEFRecordInit: BridgedDictionary {
    public convenience init(recordType: String, mediaType: String, id: String, encoding: String, lang: String, data: JSValue) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.recordType] = recordType.jsValue()
        object[Strings.mediaType] = mediaType.jsValue()
        object[Strings.id] = id.jsValue()
        object[Strings.encoding] = encoding.jsValue()
        object[Strings.lang] = lang.jsValue()
        object[Strings.data] = data.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _recordType = ReadWriteAttribute(jsObject: object, name: Strings.recordType)
        _mediaType = ReadWriteAttribute(jsObject: object, name: Strings.mediaType)
        _id = ReadWriteAttribute(jsObject: object, name: Strings.id)
        _encoding = ReadWriteAttribute(jsObject: object, name: Strings.encoding)
        _lang = ReadWriteAttribute(jsObject: object, name: Strings.lang)
        _data = ReadWriteAttribute(jsObject: object, name: Strings.data)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var recordType: String

    @ReadWriteAttribute
    public var mediaType: String

    @ReadWriteAttribute
    public var id: String

    @ReadWriteAttribute
    public var encoding: String

    @ReadWriteAttribute
    public var lang: String

    @ReadWriteAttribute
    public var data: JSValue
}
