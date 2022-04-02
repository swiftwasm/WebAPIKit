// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSGroupingRule: CSSRule {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSGroupingRule].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _cssRules = ReadonlyAttribute(jsObject: jsObject, name: Strings.cssRules)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var cssRules: CSSRuleList

    public func insertRule(rule: String, index: UInt32? = nil) -> UInt32 {
        jsObject[Strings.insertRule]!(rule.jsValue(), index?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func deleteRule(index: UInt32) {
        _ = jsObject[Strings.deleteRule]!(index.jsValue())
    }
}
