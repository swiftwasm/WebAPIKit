// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WindowControlsOverlayGeometryChangeEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.WindowControlsOverlayGeometryChangeEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _titlebarAreaRect = ReadonlyAttribute(jsObject: jsObject, name: Strings.titlebarAreaRect)
        _visible = ReadonlyAttribute(jsObject: jsObject, name: Strings.visible)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: WindowControlsOverlayGeometryChangeEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue, eventInitDict.jsValue]))
    }

    @ReadonlyAttribute
    public var titlebarAreaRect: DOMRect

    @ReadonlyAttribute
    public var visible: Bool
}
