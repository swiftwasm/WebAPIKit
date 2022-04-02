// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSCounterStyleRule: CSSRule {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSCounterStyleRule].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _system = ReadWriteAttribute(jsObject: jsObject, name: Strings.system)
        _symbols = ReadWriteAttribute(jsObject: jsObject, name: Strings.symbols)
        _additiveSymbols = ReadWriteAttribute(jsObject: jsObject, name: Strings.additiveSymbols)
        _negative = ReadWriteAttribute(jsObject: jsObject, name: Strings.negative)
        _prefix = ReadWriteAttribute(jsObject: jsObject, name: Strings.prefix)
        _suffix = ReadWriteAttribute(jsObject: jsObject, name: Strings.suffix)
        _range = ReadWriteAttribute(jsObject: jsObject, name: Strings.range)
        _pad = ReadWriteAttribute(jsObject: jsObject, name: Strings.pad)
        _speakAs = ReadWriteAttribute(jsObject: jsObject, name: Strings.speakAs)
        _fallback = ReadWriteAttribute(jsObject: jsObject, name: Strings.fallback)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var system: String

    @ReadWriteAttribute
    public var symbols: String

    @ReadWriteAttribute
    public var additiveSymbols: String

    @ReadWriteAttribute
    public var negative: String

    @ReadWriteAttribute
    public var prefix: String

    @ReadWriteAttribute
    public var suffix: String

    @ReadWriteAttribute
    public var range: String

    @ReadWriteAttribute
    public var pad: String

    @ReadWriteAttribute
    public var speakAs: String

    @ReadWriteAttribute
    public var fallback: String
}
