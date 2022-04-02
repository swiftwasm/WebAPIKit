// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUCommandEncoder: JSBridgedClass, GPUObjectBase, GPUCommandsMixin, GPUDebugCommandsMixin {
    public class var constructor: JSFunction { JSObject.global[Strings.GPUCommandEncoder].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func beginRenderPass(descriptor: GPURenderPassDescriptor) -> GPURenderPassEncoder {
        jsObject[Strings.beginRenderPass]!(descriptor.jsValue()).fromJSValue()!
    }

    public func beginComputePass(descriptor: GPUComputePassDescriptor? = nil) -> GPUComputePassEncoder {
        jsObject[Strings.beginComputePass]!(descriptor?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func copyBufferToBuffer(source: GPUBuffer, sourceOffset: GPUSize64, destination: GPUBuffer, destinationOffset: GPUSize64, size: GPUSize64) {
        _ = jsObject[Strings.copyBufferToBuffer]!(source.jsValue(), sourceOffset.jsValue(), destination.jsValue(), destinationOffset.jsValue(), size.jsValue())
    }

    public func copyBufferToTexture(source: GPUImageCopyBuffer, destination: GPUImageCopyTexture, copySize: GPUExtent3D) {
        _ = jsObject[Strings.copyBufferToTexture]!(source.jsValue(), destination.jsValue(), copySize.jsValue())
    }

    public func copyTextureToBuffer(source: GPUImageCopyTexture, destination: GPUImageCopyBuffer, copySize: GPUExtent3D) {
        _ = jsObject[Strings.copyTextureToBuffer]!(source.jsValue(), destination.jsValue(), copySize.jsValue())
    }

    public func copyTextureToTexture(source: GPUImageCopyTexture, destination: GPUImageCopyTexture, copySize: GPUExtent3D) {
        _ = jsObject[Strings.copyTextureToTexture]!(source.jsValue(), destination.jsValue(), copySize.jsValue())
    }

    public func clearBuffer(buffer: GPUBuffer, offset: GPUSize64? = nil, size: GPUSize64? = nil) {
        _ = jsObject[Strings.clearBuffer]!(buffer.jsValue(), offset?.jsValue() ?? .undefined, size?.jsValue() ?? .undefined)
    }

    public func writeTimestamp(querySet: GPUQuerySet, queryIndex: GPUSize32) {
        _ = jsObject[Strings.writeTimestamp]!(querySet.jsValue(), queryIndex.jsValue())
    }

    public func resolveQuerySet(querySet: GPUQuerySet, firstQuery: GPUSize32, queryCount: GPUSize32, destination: GPUBuffer, destinationOffset: GPUSize64) {
        _ = jsObject[Strings.resolveQuerySet]!(querySet.jsValue(), firstQuery.jsValue(), queryCount.jsValue(), destination.jsValue(), destinationOffset.jsValue())
    }

    public func finish(descriptor: GPUCommandBufferDescriptor? = nil) -> GPUCommandBuffer {
        jsObject[Strings.finish]!(descriptor?.jsValue() ?? .undefined).fromJSValue()!
    }
}