// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SpeechSynthesisVoice: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.SpeechSynthesisVoice].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _voiceURI = ReadonlyAttribute(jsObject: jsObject, name: Strings.voiceURI)
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _lang = ReadonlyAttribute(jsObject: jsObject, name: Strings.lang)
        _localService = ReadonlyAttribute(jsObject: jsObject, name: Strings.localService)
        _default = ReadonlyAttribute(jsObject: jsObject, name: Strings.default)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var voiceURI: String

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var lang: String

    @ReadonlyAttribute
    public var localService: Bool

    @ReadonlyAttribute
    public var `default`: Bool
}
