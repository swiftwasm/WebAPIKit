
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLSlotElement: HTMLElement {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLSlotElement.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _name = ReadWriteAttribute(objectRef: objectRef, name: "name")
        super.init(withCompatibleObject: objectRef)
    }

    public convenience init() {
        self.init(withCompatibleObject: HTMLSlotElement.classRef.new())
    }

    @ReadWriteAttribute
    public var name: String

    public func assignedNodes(options: AssignedNodesOptions = [:]) -> [Node] {
        return objectRef.assignedNodes!(options.jsValue()).fromJSValue()!
    }

    public func assignedElements(options: AssignedNodesOptions = [:]) -> [Element] {
        return objectRef.assignedElements!(options.jsValue()).fromJSValue()!
    }
}
