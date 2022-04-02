// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLSlotElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLSlotElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var name: String

    public func assignedNodes(options: AssignedNodesOptions? = nil) -> [Node] {
        let this = jsObject
        return this[Strings.assignedNodes].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func assignedElements(options: AssignedNodesOptions? = nil) -> [Element] {
        let this = jsObject
        return this[Strings.assignedElements].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func assign(nodes: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.assign].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }
}
