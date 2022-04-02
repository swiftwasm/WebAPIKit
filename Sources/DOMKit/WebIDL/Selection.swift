// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Selection: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Selection].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _anchorNode = ReadonlyAttribute(jsObject: jsObject, name: Strings.anchorNode)
        _anchorOffset = ReadonlyAttribute(jsObject: jsObject, name: Strings.anchorOffset)
        _focusNode = ReadonlyAttribute(jsObject: jsObject, name: Strings.focusNode)
        _focusOffset = ReadonlyAttribute(jsObject: jsObject, name: Strings.focusOffset)
        _isCollapsed = ReadonlyAttribute(jsObject: jsObject, name: Strings.isCollapsed)
        _rangeCount = ReadonlyAttribute(jsObject: jsObject, name: Strings.rangeCount)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var anchorNode: Node?

    @ReadonlyAttribute
    public var anchorOffset: UInt32

    @ReadonlyAttribute
    public var focusNode: Node?

    @ReadonlyAttribute
    public var focusOffset: UInt32

    @ReadonlyAttribute
    public var isCollapsed: Bool

    @ReadonlyAttribute
    public var rangeCount: UInt32

    @ReadonlyAttribute
    public var type: String

    public func getRangeAt(index: UInt32) -> Range {
        jsObject[Strings.getRangeAt]!(index.jsValue()).fromJSValue()!
    }

    public func addRange(range: Range) {
        _ = jsObject[Strings.addRange]!(range.jsValue())
    }

    public func removeRange(range: Range) {
        _ = jsObject[Strings.removeRange]!(range.jsValue())
    }

    public func removeAllRanges() {
        _ = jsObject[Strings.removeAllRanges]!()
    }

    public func empty() {
        _ = jsObject[Strings.empty]!()
    }

    public func collapse(node: Node?, offset: UInt32? = nil) {
        _ = jsObject[Strings.collapse]!(node.jsValue(), offset?.jsValue() ?? .undefined)
    }

    public func setPosition(node: Node?, offset: UInt32? = nil) {
        _ = jsObject[Strings.setPosition]!(node.jsValue(), offset?.jsValue() ?? .undefined)
    }

    public func collapseToStart() {
        _ = jsObject[Strings.collapseToStart]!()
    }

    public func collapseToEnd() {
        _ = jsObject[Strings.collapseToEnd]!()
    }

    public func extend(node: Node, offset: UInt32? = nil) {
        _ = jsObject[Strings.extend]!(node.jsValue(), offset?.jsValue() ?? .undefined)
    }

    public func setBaseAndExtent(anchorNode: Node, anchorOffset: UInt32, focusNode: Node, focusOffset: UInt32) {
        _ = jsObject[Strings.setBaseAndExtent]!(anchorNode.jsValue(), anchorOffset.jsValue(), focusNode.jsValue(), focusOffset.jsValue())
    }

    public func selectAllChildren(node: Node) {
        _ = jsObject[Strings.selectAllChildren]!(node.jsValue())
    }

    public func deleteFromDocument() {
        _ = jsObject[Strings.deleteFromDocument]!()
    }

    public func containsNode(node: Node, allowPartialContainment: Bool? = nil) -> Bool {
        jsObject[Strings.containsNode]!(node.jsValue(), allowPartialContainment?.jsValue() ?? .undefined).fromJSValue()!
    }

    public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }
}