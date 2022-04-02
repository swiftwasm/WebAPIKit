// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRHand: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global[Strings.XRHand].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _size = ReadonlyAttribute(jsObject: jsObject, name: Strings.size)
        self.jsObject = jsObject
    }

    public typealias Element = XRHandJoint
    public func makeIterator() -> ValueIterableIterator<XRHand> {
        ValueIterableIterator(sequence: self)
    }

    @ReadonlyAttribute
    public var size: UInt32

    public func get(key: XRHandJoint) -> XRJointSpace {
        jsObject[Strings.get]!(key.jsValue()).fromJSValue()!
    }
}