// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaStreamTrackProcessor: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.MediaStreamTrackProcessor].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _readable = ReadWriteAttribute(jsObject: jsObject, name: Strings.readable)
        self.jsObject = jsObject
    }

    public convenience init(init: MediaStreamTrackProcessorInit) {
        self.init(unsafelyWrapping: Self.constructor.new(`init`.jsValue()))
    }

    @ReadWriteAttribute
    public var readable: ReadableStream
}