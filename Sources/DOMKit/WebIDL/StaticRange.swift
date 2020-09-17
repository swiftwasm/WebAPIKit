
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class StaticRange: AbstractRange {
    override public class var constructor: JSFunction { JSObject.global.StaticRange.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(init: StaticRangeInit) {
        self.init(unsafelyWrapping: StaticRange.constructor.new(`init`.jsValue()))
    }
}
