
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class FileList: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.FileList.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    @ReadonlyAttribute
    public var length: UInt32
}
