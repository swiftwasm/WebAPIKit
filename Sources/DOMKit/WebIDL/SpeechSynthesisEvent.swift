// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SpeechSynthesisEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.SpeechSynthesisEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _utterance = ReadonlyAttribute(jsObject: jsObject, name: Strings.utterance)
        _charIndex = ReadonlyAttribute(jsObject: jsObject, name: Strings.charIndex)
        _charLength = ReadonlyAttribute(jsObject: jsObject, name: Strings.charLength)
        _elapsedTime = ReadonlyAttribute(jsObject: jsObject, name: Strings.elapsedTime)
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: SpeechSynthesisEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var utterance: SpeechSynthesisUtterance

    @ReadonlyAttribute
    public var charIndex: UInt32

    @ReadonlyAttribute
    public var charLength: UInt32

    @ReadonlyAttribute
    public var elapsedTime: Float

    @ReadonlyAttribute
    public var name: String
}
