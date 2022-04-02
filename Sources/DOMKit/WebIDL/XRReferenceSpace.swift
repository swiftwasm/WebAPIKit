// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRReferenceSpace: XRSpace {
    override public class var constructor: JSFunction { JSObject.global[Strings.XRReferenceSpace].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onreset = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onreset)
        super.init(unsafelyWrapping: jsObject)
    }

    public func getOffsetReferenceSpace(originOffset: XRRigidTransform) -> Self {
        let this = jsObject
        return this[Strings.getOffsetReferenceSpace].function!(this: this, arguments: [originOffset.jsValue()]).fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var onreset: EventHandler
}
