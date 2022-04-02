// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaintWorkletGlobalScope: WorkletGlobalScope {
    override public class var constructor: JSFunction { JSObject.global[Strings.PaintWorkletGlobalScope].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _devicePixelRatio = ReadonlyAttribute(jsObject: jsObject, name: Strings.devicePixelRatio)
        super.init(unsafelyWrapping: jsObject)
    }

    public func registerPaint(name: String, paintCtor: VoidFunction) {
        _ = jsObject[Strings.registerPaint]!(name.jsValue(), paintCtor.jsValue())
    }

    @ReadonlyAttribute
    public var devicePixelRatio: Double
}