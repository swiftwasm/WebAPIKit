// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRLayerEventInit: BridgedDictionary {
    public convenience init(layer: XRLayer) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.layer] = layer.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _layer = ReadWriteAttribute(jsObject: object, name: Strings.layer)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var layer: XRLayer
}