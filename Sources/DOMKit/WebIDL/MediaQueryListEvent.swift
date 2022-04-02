// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaQueryListEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.MediaQueryListEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _media = ReadonlyAttribute(jsObject: jsObject, name: Strings.media)
        _matches = ReadonlyAttribute(jsObject: jsObject, name: Strings.matches)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: MediaQueryListEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var media: String

    @ReadonlyAttribute
    public var matches: Bool
}
