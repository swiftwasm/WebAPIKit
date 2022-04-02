// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPURenderPassColorAttachment: BridgedDictionary {
    public convenience init(view: GPUTextureView, resolveTarget: GPUTextureView, clearValue: GPUColor, loadOp: GPULoadOp, storeOp: GPUStoreOp) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.view] = view.jsValue()
        object[Strings.resolveTarget] = resolveTarget.jsValue()
        object[Strings.clearValue] = clearValue.jsValue()
        object[Strings.loadOp] = loadOp.jsValue()
        object[Strings.storeOp] = storeOp.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _view = ReadWriteAttribute(jsObject: object, name: Strings.view)
        _resolveTarget = ReadWriteAttribute(jsObject: object, name: Strings.resolveTarget)
        _clearValue = ReadWriteAttribute(jsObject: object, name: Strings.clearValue)
        _loadOp = ReadWriteAttribute(jsObject: object, name: Strings.loadOp)
        _storeOp = ReadWriteAttribute(jsObject: object, name: Strings.storeOp)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var view: GPUTextureView

    @ReadWriteAttribute
    public var resolveTarget: GPUTextureView

    @ReadWriteAttribute
    public var clearValue: GPUColor

    @ReadWriteAttribute
    public var loadOp: GPULoadOp

    @ReadWriteAttribute
    public var storeOp: GPUStoreOp
}