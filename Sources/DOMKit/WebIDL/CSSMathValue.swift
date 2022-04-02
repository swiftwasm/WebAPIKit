// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSMathValue: CSSNumericValue {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSMathValue].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _operator = ReadonlyAttribute(jsObject: jsObject, name: Strings.operator)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var operator: CSSMathOperator
}