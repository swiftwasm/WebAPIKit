// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSMathProduct: CSSMathValue {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSMathProduct].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _values = ReadonlyAttribute(jsObject: jsObject, name: Strings.values)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(args: CSSNumberish...) {
        self.init(unsafelyWrapping: Self.constructor.new(args.jsValue()))
    }

    @ReadonlyAttribute
    public var values: CSSNumericArray
}
