
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DocumentType: Node, ChildNode {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.DocumentType.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _name = ReadonlyAttribute(objectRef: objectRef, name: "name")
        _publicId = ReadonlyAttribute(objectRef: objectRef, name: "publicId")
        _systemId = ReadonlyAttribute(objectRef: objectRef, name: "systemId")
        super.init(withCompatibleObject: objectRef)
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var publicId: String

    @ReadonlyAttribute
    public var systemId: String
}
