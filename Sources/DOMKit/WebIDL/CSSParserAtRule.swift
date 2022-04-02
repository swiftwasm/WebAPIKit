// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSParserAtRule: CSSParserRule {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSParserAtRule].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _prelude = ReadonlyAttribute(jsObject: jsObject, name: Strings.prelude)
        _body = ReadonlyAttribute(jsObject: jsObject, name: Strings.body)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(name: String, prelude: [CSSToken], body: [CSSParserRule]? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(name.jsValue(), prelude.jsValue(), body?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var prelude: [CSSParserValue]

    @ReadonlyAttribute
    public var body: [CSSParserRule]?

    public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }
}