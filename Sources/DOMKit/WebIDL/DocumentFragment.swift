
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DocumentFragment: Node, NonElementParentNode, ParentNode {
    override public class var constructor: JSFunction { JSObject.global.DocumentFragment.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: DocumentFragment.constructor.new())
    }
}
