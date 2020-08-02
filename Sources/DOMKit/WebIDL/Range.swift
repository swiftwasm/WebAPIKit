
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Range: AbstractRange {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Range.function! }

    public required init(objectRef: JSObjectRef) {
        _commonAncestorContainer = ReadonlyAttribute(objectRef: objectRef, name: "commonAncestorContainer")
        super.init(objectRef: objectRef)
    }

    public convenience init() {
        self.init(objectRef: Range.classRef.new())
    }

    @ReadonlyAttribute
    public var commonAncestorContainer: Node

    public func setStart(node: Node, offset: UInt32) {
        _ = objectRef.setStart!(node.jsValue(), offset.jsValue())
    }

    public func setEnd(node: Node, offset: UInt32) {
        _ = objectRef.setEnd!(node.jsValue(), offset.jsValue())
    }

    public func setStartBefore(node: Node) {
        _ = objectRef.setStartBefore!(node.jsValue())
    }

    public func setStartAfter(node: Node) {
        _ = objectRef.setStartAfter!(node.jsValue())
    }

    public func setEndBefore(node: Node) {
        _ = objectRef.setEndBefore!(node.jsValue())
    }

    public func setEndAfter(node: Node) {
        _ = objectRef.setEndAfter!(node.jsValue())
    }

    public func collapse(toStart: Bool = false) {
        _ = objectRef.collapse!(toStart.jsValue())
    }

    public func selectNode(node: Node) {
        _ = objectRef.selectNode!(node.jsValue())
    }

    public func selectNodeContents(node: Node) {
        _ = objectRef.selectNodeContents!(node.jsValue())
    }

    public let START_TO_START: UInt16 = 0

    public let START_TO_END: UInt16 = 1

    public let END_TO_END: UInt16 = 2

    public let END_TO_START: UInt16 = 3

    public func compareBoundaryPoints(how: UInt16, sourceRange: Range) -> Int16 {
        return objectRef.compareBoundaryPoints!(how.jsValue(), sourceRange.jsValue()).fromJSValue()
    }

    public func deleteContents() {
        _ = objectRef.deleteContents!()
    }

    public func extractContents() -> DocumentFragment {
        return objectRef.extractContents!().fromJSValue()
    }

    public func cloneContents() -> DocumentFragment {
        return objectRef.cloneContents!().fromJSValue()
    }

    public func insertNode(node: Node) {
        _ = objectRef.insertNode!(node.jsValue())
    }

    public func surroundContents(newParent: Node) {
        _ = objectRef.surroundContents!(newParent.jsValue())
    }

    public func cloneRange() -> Range {
        return objectRef.cloneRange!().fromJSValue()
    }

    public func detach() {
        _ = objectRef.detach!()
    }

    public func isPointInRange(node: Node, offset: UInt32) -> Bool {
        return objectRef.isPointInRange!(node.jsValue(), offset.jsValue()).fromJSValue()
    }

    public func comparePoint(node: Node, offset: UInt32) -> Int16 {
        return objectRef.comparePoint!(node.jsValue(), offset.jsValue()).fromJSValue()
    }

    public func intersectsNode(node: Node) -> Bool {
        return objectRef.intersectsNode!(node.jsValue()).fromJSValue()
    }
}
