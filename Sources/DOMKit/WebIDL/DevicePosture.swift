// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DevicePosture: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.DevicePosture].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _onchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onchange)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var type: DevicePostureType

    @ClosureAttribute.Optional1
    public var onchange: EventHandler
}