
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class MutationRecord: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.MutationRecord.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: "type")
        _target = ReadonlyAttribute(jsObject: jsObject, name: "target")
        _addedNodes = ReadonlyAttribute(jsObject: jsObject, name: "addedNodes")
        _removedNodes = ReadonlyAttribute(jsObject: jsObject, name: "removedNodes")
        _previousSibling = ReadonlyAttribute(jsObject: jsObject, name: "previousSibling")
        _nextSibling = ReadonlyAttribute(jsObject: jsObject, name: "nextSibling")
        _attributeName = ReadonlyAttribute(jsObject: jsObject, name: "attributeName")
        _attributeNamespace = ReadonlyAttribute(jsObject: jsObject, name: "attributeNamespace")
        _oldValue = ReadonlyAttribute(jsObject: jsObject, name: "oldValue")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var type: String

    @ReadonlyAttribute
    public var target: Node

    @ReadonlyAttribute
    public var addedNodes: NodeList

    @ReadonlyAttribute
    public var removedNodes: NodeList

    @ReadonlyAttribute
    public var previousSibling: Node?

    @ReadonlyAttribute
    public var nextSibling: Node?

    @ReadonlyAttribute
    public var attributeName: String?

    @ReadonlyAttribute
    public var attributeNamespace: String?

    @ReadonlyAttribute
    public var oldValue: String?
}
