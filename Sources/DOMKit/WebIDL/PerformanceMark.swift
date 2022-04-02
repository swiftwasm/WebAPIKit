// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PerformanceMark: PerformanceEntry {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.PerformanceMark].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _detail = ReadonlyAttribute(jsObject: jsObject, name: Strings.detail)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(markName: String, markOptions: PerformanceMarkOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [markName.jsValue(), markOptions?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var detail: JSValue
}
