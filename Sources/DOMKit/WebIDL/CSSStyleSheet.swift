// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSStyleSheet: StyleSheet {
    override public class var constructor: JSFunction { JSObject.global.CSSStyleSheet.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ownerRule = ReadonlyAttribute(jsObject: jsObject, name: "ownerRule")
        _cssRules = ReadonlyAttribute(jsObject: jsObject, name: "cssRules")
        _rules = ReadonlyAttribute(jsObject: jsObject, name: "rules")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(options: CSSStyleSheetInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(options?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var ownerRule: CSSRule?

    @ReadonlyAttribute
    public var cssRules: CSSRuleList

    public func insertRule(rule: String, index: UInt32? = nil) -> UInt32 {
        jsObject["insertRule"]!(rule.jsValue(), index?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func deleteRule(index: UInt32) {
        _ = jsObject["deleteRule"]!(index.jsValue())
    }

    public func replace(text: String) -> JSPromise {
        jsObject["replace"]!(text.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func replace(text: String) async throws -> CSSStyleSheet {
        let _promise: JSPromise = jsObject["replace"]!(text.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func replaceSync(text: String) {
        _ = jsObject["replaceSync"]!(text.jsValue())
    }

    @ReadonlyAttribute
    public var rules: CSSRuleList

    public func addRule(selector: String? = nil, style: String? = nil, index: UInt32? = nil) -> Int32 {
        jsObject["addRule"]!(selector?.jsValue() ?? .undefined, style?.jsValue() ?? .undefined, index?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func removeRule(index: UInt32? = nil) {
        _ = jsObject["removeRule"]!(index?.jsValue() ?? .undefined)
    }
}
