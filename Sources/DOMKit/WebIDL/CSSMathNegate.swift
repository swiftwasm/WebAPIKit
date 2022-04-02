// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSMathNegate: CSSMathValue {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSMathNegate].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadonlyAttribute(jsObject: jsObject, name: Strings.value)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(arg: CSSNumberish) {
        self.init(unsafelyWrapping: Self.constructor.new(arg.jsValue()))
    }

    @ReadonlyAttribute
    public var value: CSSNumericValue
}
