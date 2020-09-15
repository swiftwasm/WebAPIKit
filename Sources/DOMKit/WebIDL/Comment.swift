
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Comment: CharacterData {
    override public class var constructor: JSFunction { JSObject.global.Comment.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        super.init(withCompatibleObject: jsObject)
    }

    public convenience init(data: String = "") {
        self.init(withCompatibleObject: Comment.constructor.new(data.jsValue()))
    }
}
