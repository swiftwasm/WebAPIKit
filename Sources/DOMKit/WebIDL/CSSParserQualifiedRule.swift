// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSParserQualifiedRule: CSSParserRule {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CSSParserQualifiedRule].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _prelude = ReadonlyAttribute(jsObject: jsObject, name: Strings.prelude)
        _body = ReadonlyAttribute(jsObject: jsObject, name: Strings.body)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(prelude: [CSSToken], body: [CSSParserRule]? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [prelude.jsValue, body?.jsValue ?? .undefined]))
    }

    @ReadonlyAttribute
    public var prelude: [CSSParserValue]

    @ReadonlyAttribute
    public var body: [CSSParserRule]

    @inlinable public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }
}
