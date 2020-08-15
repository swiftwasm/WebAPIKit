
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class XPathResult: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathResult.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _resultType = ReadonlyAttribute(objectRef: objectRef, name: "resultType")
        _numberValue = ReadonlyAttribute(objectRef: objectRef, name: "numberValue")
        _stringValue = ReadonlyAttribute(objectRef: objectRef, name: "stringValue")
        _booleanValue = ReadonlyAttribute(objectRef: objectRef, name: "booleanValue")
        _singleNodeValue = ReadonlyAttribute(objectRef: objectRef, name: "singleNodeValue")
        _invalidIteratorState = ReadonlyAttribute(objectRef: objectRef, name: "invalidIteratorState")
        _snapshotLength = ReadonlyAttribute(objectRef: objectRef, name: "snapshotLength")
        self.objectRef = objectRef
    }

    public let ANY_TYPE: UInt16 = 0

    public let NUMBER_TYPE: UInt16 = 1

    public let STRING_TYPE: UInt16 = 2

    public let BOOLEAN_TYPE: UInt16 = 3

    public let UNORDERED_NODE_ITERATOR_TYPE: UInt16 = 4

    public let ORDERED_NODE_ITERATOR_TYPE: UInt16 = 5

    public let UNORDERED_NODE_SNAPSHOT_TYPE: UInt16 = 6

    public let ORDERED_NODE_SNAPSHOT_TYPE: UInt16 = 7

    public let ANY_UNORDERED_NODE_TYPE: UInt16 = 8

    public let FIRST_ORDERED_NODE_TYPE: UInt16 = 9

    @ReadonlyAttribute
    public var resultType: UInt16

    @ReadonlyAttribute
    public var numberValue: Double

    @ReadonlyAttribute
    public var stringValue: String

    @ReadonlyAttribute
    public var booleanValue: Bool

    @ReadonlyAttribute
    public var singleNodeValue: Node?

    @ReadonlyAttribute
    public var invalidIteratorState: Bool

    @ReadonlyAttribute
    public var snapshotLength: UInt32

    public func iterateNext() -> Node? {
        return objectRef.iterateNext!().fromJSValue()!
    }

    public func snapshotItem(index: UInt32) -> Node? {
        return objectRef.snapshotItem!(index.jsValue()).fromJSValue()!
    }
}
