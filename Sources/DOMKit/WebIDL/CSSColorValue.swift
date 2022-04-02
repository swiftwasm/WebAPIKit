// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSColorValue: CSSStyleValue {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CSSColorValue].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _colorSpace = ReadonlyAttribute(jsObject: jsObject, name: Strings.colorSpace)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var colorSpace: CSSKeywordValue

    @inlinable public func to(colorSpace: CSSKeywordish) -> Self {
        let this = jsObject
        return this[Strings.to].function!(this: this, arguments: [colorSpace.jsValue()]).fromJSValue()!
    }

    // XXX: illegal static override
    // override public static func parse(cssText: String) -> __UNSUPPORTED_UNION__
}
