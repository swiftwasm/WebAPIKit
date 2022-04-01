// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSPageRule: CSSGroupingRule {
    override public class var constructor: JSFunction { JSObject.global.CSSPageRule.function! }

    private enum Keys {
        static let selectorText: JSString = "selectorText"
        static let style: JSString = "style"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _selectorText = ReadWriteAttribute(jsObject: jsObject, name: Keys.selectorText)
        _style = ReadonlyAttribute(jsObject: jsObject, name: Keys.style)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var selectorText: String

    @ReadonlyAttribute
    public var style: CSSStyleDeclaration
}
