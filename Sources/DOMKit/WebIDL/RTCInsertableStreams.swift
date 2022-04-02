// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCInsertableStreams: BridgedDictionary {
    public convenience init(readable: ReadableStream, writable: WritableStream) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.readable] = readable.jsValue()
        object[Strings.writable] = writable.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _readable = ReadWriteAttribute(jsObject: object, name: Strings.readable)
        _writable = ReadWriteAttribute(jsObject: object, name: Strings.writable)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var readable: ReadableStream

    @ReadWriteAttribute
    public var writable: WritableStream
}
