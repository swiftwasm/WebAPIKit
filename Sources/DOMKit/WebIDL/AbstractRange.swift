
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class AbstractRange: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.AbstractRange.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _startContainer = ReadonlyAttribute(jsObject: jsObject, name: "startContainer")
        _startOffset = ReadonlyAttribute(jsObject: jsObject, name: "startOffset")
        _endContainer = ReadonlyAttribute(jsObject: jsObject, name: "endContainer")
        _endOffset = ReadonlyAttribute(jsObject: jsObject, name: "endOffset")
        _collapsed = ReadonlyAttribute(jsObject: jsObject, name: "collapsed")
        self.jsObject = jsObject
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
