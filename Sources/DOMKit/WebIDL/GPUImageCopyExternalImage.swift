// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUImageCopyExternalImage: BridgedDictionary {
    public convenience init(source: HTMLCanvasElement_or_ImageBitmap_or_OffscreenCanvas, origin: GPUOrigin2D, flipY: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.source] = source.jsValue()
        object[Strings.origin] = origin.jsValue()
        object[Strings.flipY] = flipY.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _source = ReadWriteAttribute(jsObject: object, name: Strings.source)
        _origin = ReadWriteAttribute(jsObject: object, name: Strings.origin)
        _flipY = ReadWriteAttribute(jsObject: object, name: Strings.flipY)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var source: HTMLCanvasElement_or_ImageBitmap_or_OffscreenCanvas

    @ReadWriteAttribute
    public var origin: GPUOrigin2D

    @ReadWriteAttribute
    public var flipY: Bool
}
