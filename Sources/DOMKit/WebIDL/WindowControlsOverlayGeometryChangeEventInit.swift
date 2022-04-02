// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WindowControlsOverlayGeometryChangeEventInit: BridgedDictionary {
    public convenience init(titlebarAreaRect: DOMRect, visible: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.titlebarAreaRect] = titlebarAreaRect.jsValue()
        object[Strings.visible] = visible.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _titlebarAreaRect = ReadWriteAttribute(jsObject: object, name: Strings.titlebarAreaRect)
        _visible = ReadWriteAttribute(jsObject: object, name: Strings.visible)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var titlebarAreaRect: DOMRect

    @ReadWriteAttribute
    public var visible: Bool
}
