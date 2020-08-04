
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class HTMLSlotElement: HTMLElement {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLSlotElement.function! }

    public required init(objectRef: JSObjectRef) {
        _name = ReadWriteAttribute(objectRef: objectRef, name: "name")
        super.init(objectRef: objectRef)
    }

    public convenience init() {
        self.init(objectRef: HTMLSlotElement.classRef(.new))
    }

    @ReadWriteAttribute
    public var name: String

    public func assignedNodes(options: AssignedNodesOptions = [:]) -> [Node] {
        return objectRef.assignedNodes!(JSValue(from: options)).fromJSValue()
    }

    public func assignedElements(options: AssignedNodesOptions = [:]) -> [Element] {
        return objectRef.assignedElements!(JSValue(from: options)).fromJSValue()
    }
}
