// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DevicePosture: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.DevicePosture].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _onchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onchange)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var type: DevicePostureType

    @ClosureAttribute1Optional
    public var onchange: EventHandler
}
