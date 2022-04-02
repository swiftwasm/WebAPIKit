// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRLightProbe: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.XRLightProbe].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _probeSpace = ReadonlyAttribute(jsObject: jsObject, name: Strings.probeSpace)
        _onreflectionchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onreflectionchange)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var probeSpace: XRSpace

    @ClosureAttribute.Optional1
    public var onreflectionchange: EventHandler
}
