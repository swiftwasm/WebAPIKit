
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Comment: CharacterData {
    override public class var constructor: JSFunction { JSObject.global.Comment.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(data: String = "") {
        self.init(unsafelyWrapping: Comment.constructor.new(data.jsValue()))
    }
}
