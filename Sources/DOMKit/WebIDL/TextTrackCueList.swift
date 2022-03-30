// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextTrackCueList: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.TextTrackCueList.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: Int) -> TextTrackCue {
        jsObject[key].fromJSValue()!
    }

    public func getCueById(id: String) -> TextTrackCue? {
        jsObject["getCueById"]!(id.jsValue()).fromJSValue()!
    }
}
