
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class NodeList: JSBridgedType, Sequence {
    public class var classRef: JSFunctionRef { JSObjectRef.global.NodeList.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    public typealias Element = Node

    @ReadonlyAttribute
    public var length: UInt32

    public func makeIterator() -> ValueIterableIterator<NodeList> { return ValueIterableIterator(sequence: self) }
}
