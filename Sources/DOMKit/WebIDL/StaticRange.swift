
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class StaticRange: AbstractRange {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.StaticRange.function! }

    public required init(objectRef: JSObjectRef) {
        super.init(objectRef: objectRef)
    }

    public convenience init(init: StaticRangeInit) {
        self.init(objectRef: StaticRange.classRef(new: JSValue(from: `init`)))
    }
}
