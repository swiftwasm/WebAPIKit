
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Attr: Node {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Attr.function! }

    public required init(objectRef: JSObjectRef) {
        _namespaceURI = ReadonlyAttribute(objectRef: objectRef, name: "namespaceURI")
        _prefix = ReadonlyAttribute(objectRef: objectRef, name: "prefix")
        _localName = ReadonlyAttribute(objectRef: objectRef, name: "localName")
        _name = ReadonlyAttribute(objectRef: objectRef, name: "name")
        _value = ReadWriteAttribute(objectRef: objectRef, name: "value")
        _ownerElement = ReadonlyAttribute(objectRef: objectRef, name: "ownerElement")
        _specified = ReadonlyAttribute(objectRef: objectRef, name: "specified")
        super.init(objectRef: objectRef)
    }

    @ReadonlyAttribute
    public var namespaceURI: String?

    @ReadonlyAttribute
    public var prefix: String?

    @ReadonlyAttribute
    public var localName: String

    @ReadonlyAttribute
    public var name: String

    @ReadWriteAttribute
    public var value: String

    @ReadonlyAttribute
    public var ownerElement: Element?

    @ReadonlyAttribute
    public var specified: Bool
}
