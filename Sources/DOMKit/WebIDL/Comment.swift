
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class Comment: CharacterData {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Comment.function! }

    public required init(objectRef: JSObjectRef) {
        super.init(objectRef: objectRef)
    }

    public convenience init(data: String = "") {
        self.init(objectRef: Comment.classRef(new: JSValue(from: data)))
    }
}
