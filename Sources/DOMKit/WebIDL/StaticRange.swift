
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class StaticRange: AbstractRange {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.StaticRange.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        super.init(withCompatibleObject: objectRef)
    }

    public convenience init(init: StaticRangeInit) {
        self.init(withCompatibleObject: StaticRange.classRef.new(`init`.jsValue()))
    }
}
