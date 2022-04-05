// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPURenderPassDescriptor: BridgedDictionary {
    public convenience init(colorAttachments: [GPURenderPassColorAttachment?], depthStencilAttachment: GPURenderPassDepthStencilAttachment, occlusionQuerySet: GPUQuerySet, timestampWrites: GPURenderPassTimestampWrites) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.colorAttachments] = colorAttachments.jsValue
        object[Strings.depthStencilAttachment] = depthStencilAttachment.jsValue
        object[Strings.occlusionQuerySet] = occlusionQuerySet.jsValue
        object[Strings.timestampWrites] = timestampWrites.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _colorAttachments = ReadWriteAttribute(jsObject: object, name: Strings.colorAttachments)
        _depthStencilAttachment = ReadWriteAttribute(jsObject: object, name: Strings.depthStencilAttachment)
        _occlusionQuerySet = ReadWriteAttribute(jsObject: object, name: Strings.occlusionQuerySet)
        _timestampWrites = ReadWriteAttribute(jsObject: object, name: Strings.timestampWrites)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var colorAttachments: [GPURenderPassColorAttachment?]

    @ReadWriteAttribute
    public var depthStencilAttachment: GPURenderPassDepthStencilAttachment

    @ReadWriteAttribute
    public var occlusionQuerySet: GPUQuerySet

    @ReadWriteAttribute
    public var timestampWrites: GPURenderPassTimestampWrites
}
