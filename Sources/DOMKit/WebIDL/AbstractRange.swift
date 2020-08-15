
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class AbstractRange: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.AbstractRange.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _startContainer = ReadonlyAttribute(objectRef: objectRef, name: "startContainer")
        _startOffset = ReadonlyAttribute(objectRef: objectRef, name: "startOffset")
        _endContainer = ReadonlyAttribute(objectRef: objectRef, name: "endContainer")
        _endOffset = ReadonlyAttribute(objectRef: objectRef, name: "endOffset")
        _collapsed = ReadonlyAttribute(objectRef: objectRef, name: "collapsed")
        self.objectRef = objectRef
    }

    @ReadonlyAttribute
    public var startContainer: Node

    @ReadonlyAttribute
    public var startOffset: UInt32

    @ReadonlyAttribute
    public var endContainer: Node

    @ReadonlyAttribute
    public var endOffset: UInt32

    @ReadonlyAttribute
    public var collapsed: Bool
}
