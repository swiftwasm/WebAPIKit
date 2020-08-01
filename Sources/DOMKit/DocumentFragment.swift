
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DocumentFragment: Node, NonElementParentNode, ParentNode {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.DocumentFragment.function! }

    public required init(objectRef: JSObjectRef) {
        super.init(objectRef: objectRef)
    }

    public convenience init() {
        self.init(objectRef: DocumentFragment.classRef.new())
    }
}
