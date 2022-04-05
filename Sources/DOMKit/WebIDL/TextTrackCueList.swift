// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextTrackCueList: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.TextTrackCueList].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    @inlinable public subscript(key: Int) -> TextTrackCue {
        jsObject[key].fromJSValue()!
    }

    @inlinable public func getCueById(id: String) -> TextTrackCue? {
        let this = jsObject
        return this[Strings.getCueById].function!(this: this, arguments: [id.jsValue]).fromJSValue()!
    }
}
