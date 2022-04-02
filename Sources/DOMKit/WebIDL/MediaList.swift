// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaList: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.MediaList].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _mediaText = ReadWriteAttribute(jsObject: jsObject, name: Strings.mediaText)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        self.jsObject = jsObject
    }

    @ReadWriteAttribute
    public var mediaText: String

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: Int) -> String? {
        jsObject[key].fromJSValue()
    }

    public func appendMedium(medium: String) {
        let this = jsObject
        _ = this[Strings.appendMedium].function!(this: this, arguments: [medium.jsValue()])
    }

    public func deleteMedium(medium: String) {
        let this = jsObject
        _ = this[Strings.deleteMedium].function!(this: this, arguments: [medium.jsValue()])
    }
}
