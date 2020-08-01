
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class Comment: CharacterData {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Comment.function! }

    public required init(objectRef: JSObjectRef) {
        super.init(objectRef: objectRef)
    }

    public convenience init(data: String = "") {
        self.init(objectRef: Comment.classRef.new(data.jsValue()))
    }
}
