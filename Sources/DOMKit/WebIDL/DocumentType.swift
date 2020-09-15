
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DocumentType: Node, ChildNode {
    override public class var constructor: JSFunction { JSObject.global.DocumentType.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: "name")
        _publicId = ReadonlyAttribute(jsObject: jsObject, name: "publicId")
        _systemId = ReadonlyAttribute(jsObject: jsObject, name: "systemId")
        super.init(withCompatibleObject: jsObject)
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var publicId: String

    @ReadonlyAttribute
    public var systemId: String
}
