// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MutationRecord: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.MutationRecord].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _target = ReadonlyAttribute(jsObject: jsObject, name: Strings.target)
        _addedNodes = ReadonlyAttribute(jsObject: jsObject, name: Strings.addedNodes)
        _removedNodes = ReadonlyAttribute(jsObject: jsObject, name: Strings.removedNodes)
        _previousSibling = ReadonlyAttribute(jsObject: jsObject, name: Strings.previousSibling)
        _nextSibling = ReadonlyAttribute(jsObject: jsObject, name: Strings.nextSibling)
        _attributeName = ReadonlyAttribute(jsObject: jsObject, name: Strings.attributeName)
        _attributeNamespace = ReadonlyAttribute(jsObject: jsObject, name: Strings.attributeNamespace)
        _oldValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.oldValue)
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
