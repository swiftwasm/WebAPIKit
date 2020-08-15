
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class File: Blob {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.File.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _name = ReadonlyAttribute(objectRef: objectRef, name: "name")
        _lastModified = ReadonlyAttribute(objectRef: objectRef, name: "lastModified")
        super.init(withCompatibleObject: objectRef)
    }

    public convenience init(fileBits: [BlobPart], fileName: String, options: FilePropertyBag = [:]) {
        self.init(withCompatibleObject: File.classRef.new(fileBits.jsValue(), fileName.jsValue(), options.jsValue()))
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var lastModified: Int64
}
