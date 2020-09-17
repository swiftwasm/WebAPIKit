
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Range: AbstractRange {
    override public class var constructor: JSFunction { JSObject.global.Range.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _commonAncestorContainer = ReadonlyAttribute(jsObject: jsObject, name: "commonAncestorContainer")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Range.constructor.new())
    }

    @ReadonlyAttribute
    public var commonAncestorContainer: Node

    public func setStart(node: Node, offset: UInt32) {
        _ = jsObject.setStart!(node.jsValue(), offset.jsValue())
    }

    public func setEnd(node: Node, offset: UInt32) {
        _ = jsObject.setEnd!(node.jsValue(), offset.jsValue())
    }

    public func setStartBefore(node: Node) {
        _ = jsObject.setStartBefore!(node.jsValue())
    }

    public func setStartAfter(node: Node) {
        _ = jsObject.setStartAfter!(node.jsValue())
    }

    public func setEndBefore(node: Node) {
        _ = jsObject.setEndBefore!(node.jsValue())
    }

    public func setEndAfter(node: Node) {
        _ = jsObject.setEndAfter!(node.jsValue())
    }

    public func collapse(toStart: Bool = false) {
        _ = jsObject.collapse!(toStart.jsValue())
    }

    public func selectNode(node: Node) {
        _ = jsObject.selectNode!(node.jsValue())
    }

    public func selectNodeContents(node: Node) {
        _ = jsObject.selectNodeContents!(node.jsValue())
    }

    public let START_TO_START: UInt16 = 0

    public let START_TO_END: UInt16 = 1

    public let END_TO_END: UInt16 = 2

    public let END_TO_START: UInt16 = 3

    public func compareBoundaryPoints(how: UInt16, sourceRange: Range) -> Int16 {
        return jsObject.compareBoundaryPoints!(how.jsValue(), sourceRange.jsValue()).fromJSValue()!
    }

    public func deleteContents() {
        _ = jsObject.deleteContents!()
    }

    public func extractContents() -> DocumentFragment {
        return jsObject.extractContents!().fromJSValue()!
    }

    public func cloneContents() -> DocumentFragment {
        return jsObject.cloneContents!().fromJSValue()!
    }

    public func insertNode(node: Node) {
        _ = jsObject.insertNode!(node.jsValue())
    }

    public func surroundContents(newParent: Node) {
        _ = jsObject.surroundContents!(newParent.jsValue())
    }

    public func cloneRange() -> Range {
        return jsObject.cloneRange!().fromJSValue()!
    }

    public func detach() {
        _ = jsObject.detach!()
    }

    public func isPointInRange(node: Node, offset: UInt32) -> Bool {
        return jsObject.isPointInRange!(node.jsValue(), offset.jsValue()).fromJSValue()!
    }

    public func comparePoint(node: Node, offset: UInt32) -> Int16 {
        return jsObject.comparePoint!(node.jsValue(), offset.jsValue()).fromJSValue()!
    }

    public func intersectsNode(node: Node) -> Bool {
        return jsObject.intersectsNode!(node.jsValue()).fromJSValue()!
    }
}
