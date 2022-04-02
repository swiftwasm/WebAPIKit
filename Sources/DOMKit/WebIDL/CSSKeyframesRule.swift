// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSKeyframesRule: CSSRule {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSKeyframesRule].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _cssRules = ReadonlyAttribute(jsObject: jsObject, name: Strings.cssRules)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var cssRules: CSSRuleList

    public func appendRule(rule: String) {
        _ = jsObject[Strings.appendRule]!(rule.jsValue())
    }

    public func deleteRule(select: String) {
        _ = jsObject[Strings.deleteRule]!(select.jsValue())
    }

    public func findRule(select: String) -> CSSKeyframeRule? {
        jsObject[Strings.findRule]!(select.jsValue()).fromJSValue()!
    }
}
