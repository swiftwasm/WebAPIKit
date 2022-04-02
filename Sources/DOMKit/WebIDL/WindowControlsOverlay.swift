// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WindowControlsOverlay: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.WindowControlsOverlay].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _visible = ReadonlyAttribute(jsObject: jsObject, name: Strings.visible)
        _ongeometrychange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ongeometrychange)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var visible: Bool

    public func getTitlebarAreaRect() -> DOMRect {
        jsObject[Strings.getTitlebarAreaRect]!().fromJSValue()!
    }

    @ClosureAttribute.Optional1
    public var ongeometrychange: EventHandler
}