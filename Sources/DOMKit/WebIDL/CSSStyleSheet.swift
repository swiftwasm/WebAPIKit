// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSStyleSheet: StyleSheet {
    override public class var constructor: JSFunction { JSObject.global.CSSStyleSheet.function! }

    private enum Keys {
        static let removeRule: JSString = "removeRule"
        static let insertRule: JSString = "insertRule"
        static let rules: JSString = "rules"
        static let cssRules: JSString = "cssRules"
        static let addRule: JSString = "addRule"
        static let replaceSync: JSString = "replaceSync"
        static let ownerRule: JSString = "ownerRule"
        static let replace: JSString = "replace"
        static let deleteRule: JSString = "deleteRule"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ownerRule = ReadonlyAttribute(jsObject: jsObject, name: Keys.ownerRule)
        _cssRules = ReadonlyAttribute(jsObject: jsObject, name: Keys.cssRules)
        _rules = ReadonlyAttribute(jsObject: jsObject, name: Keys.rules)
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
        jsObject[Keys.insertRule]!(rule.jsValue(), index?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func deleteRule(index: UInt32) {
        _ = jsObject[Keys.deleteRule]!(index.jsValue())
    }

    public func replace(text: String) -> JSPromise {
        jsObject[Keys.replace]!(text.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func replace(text: String) async throws -> CSSStyleSheet {
        let _promise: JSPromise = jsObject[Keys.replace]!(text.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func replaceSync(text: String) {
        _ = jsObject[Keys.replaceSync]!(text.jsValue())
    }

    @ReadonlyAttribute
    public var rules: CSSRuleList

    public func addRule(selector: String? = nil, style: String? = nil, index: UInt32? = nil) -> Int32 {
        jsObject[Keys.addRule]!(selector?.jsValue() ?? .undefined, style?.jsValue() ?? .undefined, index?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func removeRule(index: UInt32? = nil) {
        _ = jsObject[Keys.removeRule]!(index?.jsValue() ?? .undefined)
    }
}
