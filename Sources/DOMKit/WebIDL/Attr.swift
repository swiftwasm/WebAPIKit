
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Attr: Node {
    override public class var constructor: JSFunction { JSObject.global.Attr.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _namespaceURI = ReadonlyAttribute(jsObject: jsObject, name: "namespaceURI")
        _prefix = ReadonlyAttribute(jsObject: jsObject, name: "prefix")
        _localName = ReadonlyAttribute(jsObject: jsObject, name: "localName")
        _name = ReadonlyAttribute(jsObject: jsObject, name: "name")
        _value = ReadWriteAttribute(jsObject: jsObject, name: "value")
        _ownerElement = ReadonlyAttribute(jsObject: jsObject, name: "ownerElement")
        _specified = ReadonlyAttribute(jsObject: jsObject, name: "specified")
        super.init(withCompatibleObject: jsObject)
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
