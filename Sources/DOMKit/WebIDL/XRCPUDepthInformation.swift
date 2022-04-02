// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRCPUDepthInformation: XRDepthInformation {
    override public class var constructor: JSFunction { JSObject.global[Strings.XRCPUDepthInformation].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadonlyAttribute(jsObject: jsObject, name: Strings.data)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var data: ArrayBuffer

    public func getDepthInMeters(x: Float, y: Float) -> Float {
        let this = jsObject
        return this[Strings.getDepthInMeters].function!(this: this, arguments: [x.jsValue(), y.jsValue()]).fromJSValue()!
    }
}
