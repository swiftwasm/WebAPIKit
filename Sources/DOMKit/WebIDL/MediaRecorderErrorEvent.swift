// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaRecorderErrorEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.MediaRecorderErrorEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _error = ReadonlyAttribute(jsObject: jsObject, name: Strings.error)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: MediaRecorderErrorEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var error: DOMException
}