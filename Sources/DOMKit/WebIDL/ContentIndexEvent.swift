// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ContentIndexEvent: ExtendableEvent {
    override public class var constructor: JSFunction { JSObject.global[Strings.ContentIndexEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, init: ContentIndexEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), `init`.jsValue()]))
    }

    @ReadonlyAttribute
    public var id: String
}
