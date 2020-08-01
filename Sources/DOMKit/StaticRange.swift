
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class StaticRange: AbstractRange {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.StaticRange.function! }

    public required init(objectRef: JSObjectRef) {
        super.init(objectRef: objectRef)
    }

    public convenience init(init: StaticRangeInit) {
        self.init(objectRef: StaticRange.classRef.new(`init`.jsValue()))
    }
}
