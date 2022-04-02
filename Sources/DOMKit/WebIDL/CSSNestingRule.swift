// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSNestingRule: CSSRule {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSNestingRule].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _selectorText = ReadWriteAttribute(jsObject: jsObject, name: Strings.selectorText)
        _style = ReadonlyAttribute(jsObject: jsObject, name: Strings.style)
        _cssRules = ReadonlyAttribute(jsObject: jsObject, name: Strings.cssRules)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var selectorText: String

    @ReadonlyAttribute
    public var style: CSSStyleDeclaration

    @ReadonlyAttribute
    public var cssRules: CSSRuleList

    public func insertRule(rule: String, index: UInt32? = nil) -> UInt32 {
        let this = jsObject
        return this[Strings.insertRule].function!(this: this, arguments: [rule.jsValue(), index?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func deleteRule(index: UInt32) {
        let this = jsObject
        _ = this[Strings.deleteRule].function!(this: this, arguments: [index.jsValue()])
    }
}
