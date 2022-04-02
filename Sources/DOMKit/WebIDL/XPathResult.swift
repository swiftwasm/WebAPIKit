// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XPathResult: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XPathResult].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _resultType = ReadonlyAttribute(jsObject: jsObject, name: Strings.resultType)
        _numberValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.numberValue)
        _stringValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.stringValue)
        _booleanValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.booleanValue)
        _singleNodeValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.singleNodeValue)
        _invalidIteratorState = ReadonlyAttribute(jsObject: jsObject, name: Strings.invalidIteratorState)
        _snapshotLength = ReadonlyAttribute(jsObject: jsObject, name: Strings.snapshotLength)
        self.jsObject = jsObject
    }

    public static let ANY_TYPE: UInt16 = 0

    public static let NUMBER_TYPE: UInt16 = 1

    public static let STRING_TYPE: UInt16 = 2

    public static let BOOLEAN_TYPE: UInt16 = 3

    public static let UNORDERED_NODE_ITERATOR_TYPE: UInt16 = 4

    public static let ORDERED_NODE_ITERATOR_TYPE: UInt16 = 5

    public static let UNORDERED_NODE_SNAPSHOT_TYPE: UInt16 = 6

    public static let ORDERED_NODE_SNAPSHOT_TYPE: UInt16 = 7

    public static let ANY_UNORDERED_NODE_TYPE: UInt16 = 8

    public static let FIRST_ORDERED_NODE_TYPE: UInt16 = 9

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
        let this = jsObject
        return this[Strings.iterateNext].function!(this: this, arguments: []).fromJSValue()!
    }

    public func snapshotItem(index: UInt32) -> Node? {
        let this = jsObject
        return this[Strings.snapshotItem].function!(this: this, arguments: [index.jsValue()]).fromJSValue()!
    }
}
