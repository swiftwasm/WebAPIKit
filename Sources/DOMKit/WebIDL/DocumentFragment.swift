
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DocumentFragment: Node, NonElementParentNode, ParentNode {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.DocumentFragment.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        super.init(withCompatibleObject: objectRef)
    }

    public convenience init() {
        self.init(withCompatibleObject: DocumentFragment.classRef.new())
    }
}
