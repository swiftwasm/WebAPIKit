// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioWorkletProcessor: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.AudioWorkletProcessor].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _port = ReadonlyAttribute(jsObject: jsObject, name: Strings.port)
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadonlyAttribute
    public var port: MessagePort
}
