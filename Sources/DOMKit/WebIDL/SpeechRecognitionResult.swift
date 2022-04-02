// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SpeechRecognitionResult: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.SpeechRecognitionResult].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _isFinal = ReadonlyAttribute(jsObject: jsObject, name: Strings.isFinal)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    @inlinable public subscript(key: Int) -> SpeechRecognitionAlternative {
        jsObject[key].fromJSValue()!
    }

    @ReadonlyAttribute
    public var isFinal: Bool
}
