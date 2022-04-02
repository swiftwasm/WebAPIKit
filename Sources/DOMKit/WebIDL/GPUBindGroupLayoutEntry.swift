// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUBindGroupLayoutEntry: BridgedDictionary {
    public convenience init(binding: GPUIndex32, visibility: GPUShaderStageFlags, buffer: GPUBufferBindingLayout, sampler: GPUSamplerBindingLayout, texture: GPUTextureBindingLayout, storageTexture: GPUStorageTextureBindingLayout, externalTexture: GPUExternalTextureBindingLayout) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.binding] = binding.jsValue()
        object[Strings.visibility] = visibility.jsValue()
        object[Strings.buffer] = buffer.jsValue()
        object[Strings.sampler] = sampler.jsValue()
        object[Strings.texture] = texture.jsValue()
        object[Strings.storageTexture] = storageTexture.jsValue()
        object[Strings.externalTexture] = externalTexture.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _binding = ReadWriteAttribute(jsObject: object, name: Strings.binding)
        _visibility = ReadWriteAttribute(jsObject: object, name: Strings.visibility)
        _buffer = ReadWriteAttribute(jsObject: object, name: Strings.buffer)
        _sampler = ReadWriteAttribute(jsObject: object, name: Strings.sampler)
        _texture = ReadWriteAttribute(jsObject: object, name: Strings.texture)
        _storageTexture = ReadWriteAttribute(jsObject: object, name: Strings.storageTexture)
        _externalTexture = ReadWriteAttribute(jsObject: object, name: Strings.externalTexture)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var binding: GPUIndex32

    @ReadWriteAttribute
    public var visibility: GPUShaderStageFlags

    @ReadWriteAttribute
    public var buffer: GPUBufferBindingLayout

    @ReadWriteAttribute
    public var sampler: GPUSamplerBindingLayout

    @ReadWriteAttribute
    public var texture: GPUTextureBindingLayout

    @ReadWriteAttribute
    public var storageTexture: GPUStorageTextureBindingLayout

    @ReadWriteAttribute
    public var externalTexture: GPUExternalTextureBindingLayout
}