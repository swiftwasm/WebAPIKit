
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class MutationRecord: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.MutationRecord.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _type = ReadonlyAttribute(objectRef: objectRef, name: "type")
        _target = ReadonlyAttribute(objectRef: objectRef, name: "target")
        _addedNodes = ReadonlyAttribute(objectRef: objectRef, name: "addedNodes")
        _removedNodes = ReadonlyAttribute(objectRef: objectRef, name: "removedNodes")
        _previousSibling = ReadonlyAttribute(objectRef: objectRef, name: "previousSibling")
        _nextSibling = ReadonlyAttribute(objectRef: objectRef, name: "nextSibling")
        _attributeName = ReadonlyAttribute(objectRef: objectRef, name: "attributeName")
        _attributeNamespace = ReadonlyAttribute(objectRef: objectRef, name: "attributeNamespace")
        _oldValue = ReadonlyAttribute(objectRef: objectRef, name: "oldValue")
        self.objectRef = objectRef
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
