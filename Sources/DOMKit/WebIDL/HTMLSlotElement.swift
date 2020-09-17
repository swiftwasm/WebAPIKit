
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLSlotElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLSlotElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: "name")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: HTMLSlotElement.constructor.new())
    }

    @ReadWriteAttribute
    public var name: String

    public func assignedNodes(options: AssignedNodesOptions = [:]) -> [Node] {
        return jsObject.assignedNodes!(options.jsValue()).fromJSValue()!
    }

    public func assignedElements(options: AssignedNodesOptions = [:]) -> [Element] {
        return jsObject.assignedElements!(options.jsValue()).fromJSValue()!
    }
}
