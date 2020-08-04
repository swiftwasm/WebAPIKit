
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class File: Blob {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.File.function! }

    public required init(objectRef: JSObjectRef) {
        _name = ReadonlyAttribute(objectRef: objectRef, name: "name")
        _lastModified = ReadonlyAttribute(objectRef: objectRef, name: "lastModified")
        super.init(objectRef: objectRef)
    }

    public convenience init(fileBits: [BlobPart], fileName: String, options: FilePropertyBag = [:]) {
        self.init(objectRef: File.classRef(new: JSValue(from: fileBits), JSValue(from: fileName), JSValue(from: options)))
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var lastModified: Int64
}
