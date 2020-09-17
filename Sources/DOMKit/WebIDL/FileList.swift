
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class FileList: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.FileList.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32
}
