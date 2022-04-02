// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SpeechRecognitionAlternative: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.SpeechRecognitionAlternative].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _transcript = ReadonlyAttribute(jsObject: jsObject, name: Strings.transcript)
        _confidence = ReadonlyAttribute(jsObject: jsObject, name: Strings.confidence)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var transcript: String

    @ReadonlyAttribute
    public var confidence: Float
}
