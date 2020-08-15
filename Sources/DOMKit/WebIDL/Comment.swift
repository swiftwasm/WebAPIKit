
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Comment: CharacterData {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Comment.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        super.init(withCompatibleObject: objectRef)
    }

    public convenience init(data: String = "") {
        self.init(withCompatibleObject: Comment.classRef.new(data.jsValue()))
    }
}
