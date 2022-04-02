// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WorkletAnimation: Animation {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.WorkletAnimation].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _animatorName = ReadonlyAttribute(jsObject: jsObject, name: Strings.animatorName)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(animatorName: String, effects: __UNSUPPORTED_UNION__? = nil, timeline: AnimationTimeline? = nil, options: JSValue? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [animatorName.jsValue(), effects?.jsValue() ?? .undefined, timeline?.jsValue() ?? .undefined, options?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var animatorName: String
}
