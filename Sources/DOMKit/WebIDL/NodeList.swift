
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class NodeList: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global.NodeList.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        self.jsObject = jsObject
    }

    public typealias Element = Node

    @ReadonlyAttribute
    public var length: UInt32

    public func makeIterator() -> ValueIterableIterator<NodeList> { return ValueIterableIterator(sequence: self) }
}
