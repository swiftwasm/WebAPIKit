
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class Range: AbstractRange {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Range.function! }

    public required init(objectRef: JSObjectRef) {
        _commonAncestorContainer = ReadonlyAttribute(objectRef: objectRef, name: "commonAncestorContainer")
        super.init(objectRef: objectRef)
    }

    public convenience init() {
        self.init(objectRef: Range.classRef(.new))
    }

    @ReadonlyAttribute
    public var commonAncestorContainer: Node

    public func setStart(node: Node, offset: UInt32) {
        _ = objectRef.setStart!(JSValue(from: node), JSValue(from: offset))
    }

    public func setEnd(node: Node, offset: UInt32) {
        _ = objectRef.setEnd!(JSValue(from: node), JSValue(from: offset))
    }

    public func setStartBefore(node: Node) {
        _ = objectRef.setStartBefore!(JSValue(from: node))
    }

    public func setStartAfter(node: Node) {
        _ = objectRef.setStartAfter!(JSValue(from: node))
    }

    public func setEndBefore(node: Node) {
        _ = objectRef.setEndBefore!(JSValue(from: node))
    }

    public func setEndAfter(node: Node) {
        _ = objectRef.setEndAfter!(JSValue(from: node))
    }

    public func collapse(toStart: Bool = false) {
        _ = objectRef.collapse!(JSValue(from: toStart))
    }

    public func selectNode(node: Node) {
        _ = objectRef.selectNode!(JSValue(from: node))
    }

    public func selectNodeContents(node: Node) {
        _ = objectRef.selectNodeContents!(JSValue(from: node))
    }

    public let START_TO_START: UInt16 = 0

    public let START_TO_END: UInt16 = 1

    public let END_TO_END: UInt16 = 2

    public let END_TO_START: UInt16 = 3

    public func compareBoundaryPoints(how: UInt16, sourceRange: Range) -> Int16 {
        return objectRef.compareBoundaryPoints!(JSValue(from: how), JSValue(from: sourceRange)).fromJSValue()
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
        _ = objectRef.insertNode!(JSValue(from: node))
    }

    public func surroundContents(newParent: Node) {
        _ = objectRef.surroundContents!(JSValue(from: newParent))
    }

    public func cloneRange() -> Range {
        return objectRef.cloneRange!().fromJSValue()
    }

    public func detach() {
        _ = objectRef.detach!()
    }

    public func isPointInRange(node: Node, offset: UInt32) -> Bool {
        return objectRef.isPointInRange!(JSValue(from: node), JSValue(from: offset)).fromJSValue()
    }

    public func comparePoint(node: Node, offset: UInt32) -> Int16 {
        return objectRef.comparePoint!(JSValue(from: node), JSValue(from: offset)).fromJSValue()
    }

    public func intersectsNode(node: Node) -> Bool {
        return objectRef.intersectsNode!(JSValue(from: node)).fromJSValue()
    }
}
