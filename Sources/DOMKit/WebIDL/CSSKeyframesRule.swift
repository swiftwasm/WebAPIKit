// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSKeyframesRule: CSSRule {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CSSKeyframesRule].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _cssRules = ReadonlyAttribute(jsObject: jsObject, name: Strings.cssRules)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var cssRules: CSSRuleList

    @inlinable public func appendRule(rule: String) {
        let this = jsObject
        _ = this[Strings.appendRule].function!(this: this, arguments: [rule.jsValue()])
    }

    @inlinable public func deleteRule(select: String) {
        let this = jsObject
        _ = this[Strings.deleteRule].function!(this: this, arguments: [select.jsValue()])
    }

    @inlinable public func findRule(select: String) -> CSSKeyframeRule? {
        let this = jsObject
        return this[Strings.findRule].function!(this: this, arguments: [select.jsValue()]).fromJSValue()!
    }
}
