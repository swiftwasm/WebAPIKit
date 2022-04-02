// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Range: AbstractRange {
    override public class var constructor: JSFunction { JSObject.global[Strings.Range].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _commonAncestorContainer = ReadonlyAttribute(jsObject: jsObject, name: Strings.commonAncestorContainer)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadonlyAttribute
    public var commonAncestorContainer: Node

    public func setStart(node: Node, offset: UInt32) {
        _ = jsObject[Strings.setStart]!(node.jsValue(), offset.jsValue())
    }

    public func setEnd(node: Node, offset: UInt32) {
        _ = jsObject[Strings.setEnd]!(node.jsValue(), offset.jsValue())
    }

    public func setStartBefore(node: Node) {
        _ = jsObject[Strings.setStartBefore]!(node.jsValue())
    }

    public func setStartAfter(node: Node) {
        _ = jsObject[Strings.setStartAfter]!(node.jsValue())
    }

    public func setEndBefore(node: Node) {
        _ = jsObject[Strings.setEndBefore]!(node.jsValue())
    }

    public func setEndAfter(node: Node) {
        _ = jsObject[Strings.setEndAfter]!(node.jsValue())
    }

    public func collapse(toStart: Bool? = nil) {
        _ = jsObject[Strings.collapse]!(toStart?.jsValue() ?? .undefined)
    }

    public func selectNode(node: Node) {
        _ = jsObject[Strings.selectNode]!(node.jsValue())
    }

    public func selectNodeContents(node: Node) {
        _ = jsObject[Strings.selectNodeContents]!(node.jsValue())
    }

    public static let START_TO_START: UInt16 = 0

    public static let START_TO_END: UInt16 = 1

    public static let END_TO_END: UInt16 = 2

    public static let END_TO_START: UInt16 = 3

    public func compareBoundaryPoints(how: UInt16, sourceRange: Range) -> Int16 {
        jsObject[Strings.compareBoundaryPoints]!(how.jsValue(), sourceRange.jsValue()).fromJSValue()!
    }

    public func deleteContents() {
        _ = jsObject[Strings.deleteContents]!()
    }

    public func extractContents() -> DocumentFragment {
        jsObject[Strings.extractContents]!().fromJSValue()!
    }

    public func cloneContents() -> DocumentFragment {
        jsObject[Strings.cloneContents]!().fromJSValue()!
    }

    public func insertNode(node: Node) {
        _ = jsObject[Strings.insertNode]!(node.jsValue())
    }

    public func surroundContents(newParent: Node) {
        _ = jsObject[Strings.surroundContents]!(newParent.jsValue())
    }

    public func cloneRange() -> Self {
        jsObject[Strings.cloneRange]!().fromJSValue()!
    }

    public func detach() {
        _ = jsObject[Strings.detach]!()
    }

    public func isPointInRange(node: Node, offset: UInt32) -> Bool {
        jsObject[Strings.isPointInRange]!(node.jsValue(), offset.jsValue()).fromJSValue()!
    }

    public func comparePoint(node: Node, offset: UInt32) -> Int16 {
        jsObject[Strings.comparePoint]!(node.jsValue(), offset.jsValue()).fromJSValue()!
    }

    public func intersectsNode(node: Node) -> Bool {
        jsObject[Strings.intersectsNode]!(node.jsValue()).fromJSValue()!
    }

    public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }

    public func getClientRects() -> DOMRectList {
        jsObject[Strings.getClientRects]!().fromJSValue()!
    }

    public func getBoundingClientRect() -> DOMRect {
        jsObject[Strings.getBoundingClientRect]!().fromJSValue()!
    }

    public func createContextualFragment(fragment: String) -> DocumentFragment {
        jsObject[Strings.createContextualFragment]!(fragment.jsValue()).fromJSValue()!
    }
}
