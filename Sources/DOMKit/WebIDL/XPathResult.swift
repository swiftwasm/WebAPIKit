
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class XPathResult: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.XPathResult.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _resultType = ReadonlyAttribute(jsObject: jsObject, name: "resultType")
        _numberValue = ReadonlyAttribute(jsObject: jsObject, name: "numberValue")
        _stringValue = ReadonlyAttribute(jsObject: jsObject, name: "stringValue")
        _booleanValue = ReadonlyAttribute(jsObject: jsObject, name: "booleanValue")
        _singleNodeValue = ReadonlyAttribute(jsObject: jsObject, name: "singleNodeValue")
        _invalidIteratorState = ReadonlyAttribute(jsObject: jsObject, name: "invalidIteratorState")
        _snapshotLength = ReadonlyAttribute(jsObject: jsObject, name: "snapshotLength")
        self.jsObject = jsObject
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
        return jsObject.iterateNext!().fromJSValue()!
    }

    public func snapshotItem(index: UInt32) -> Node? {
        return jsObject.snapshotItem!(index.jsValue()).fromJSValue()!
    }
}
