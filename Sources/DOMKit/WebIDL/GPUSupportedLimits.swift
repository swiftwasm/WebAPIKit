// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUSupportedLimits: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.GPUSupportedLimits].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _maxTextureDimension1D = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxTextureDimension1D)
        _maxTextureDimension2D = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxTextureDimension2D)
        _maxTextureDimension3D = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxTextureDimension3D)
        _maxTextureArrayLayers = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxTextureArrayLayers)
        _maxBindGroups = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxBindGroups)
        _maxDynamicUniformBuffersPerPipelineLayout = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxDynamicUniformBuffersPerPipelineLayout)
        _maxDynamicStorageBuffersPerPipelineLayout = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxDynamicStorageBuffersPerPipelineLayout)
        _maxSampledTexturesPerShaderStage = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxSampledTexturesPerShaderStage)
        _maxSamplersPerShaderStage = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxSamplersPerShaderStage)
        _maxStorageBuffersPerShaderStage = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxStorageBuffersPerShaderStage)
        _maxStorageTexturesPerShaderStage = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxStorageTexturesPerShaderStage)
        _maxUniformBuffersPerShaderStage = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxUniformBuffersPerShaderStage)
        _maxUniformBufferBindingSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxUniformBufferBindingSize)
        _maxStorageBufferBindingSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxStorageBufferBindingSize)
        _minUniformBufferOffsetAlignment = ReadonlyAttribute(jsObject: jsObject, name: Strings.minUniformBufferOffsetAlignment)
        _minStorageBufferOffsetAlignment = ReadonlyAttribute(jsObject: jsObject, name: Strings.minStorageBufferOffsetAlignment)
        _maxVertexBuffers = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxVertexBuffers)
        _maxVertexAttributes = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxVertexAttributes)
        _maxVertexBufferArrayStride = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxVertexBufferArrayStride)
        _maxInterStageShaderComponents = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxInterStageShaderComponents)
        _maxComputeWorkgroupStorageSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxComputeWorkgroupStorageSize)
        _maxComputeInvocationsPerWorkgroup = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxComputeInvocationsPerWorkgroup)
        _maxComputeWorkgroupSizeX = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxComputeWorkgroupSizeX)
        _maxComputeWorkgroupSizeY = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxComputeWorkgroupSizeY)
        _maxComputeWorkgroupSizeZ = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxComputeWorkgroupSizeZ)
        _maxComputeWorkgroupsPerDimension = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxComputeWorkgroupsPerDimension)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var maxTextureDimension1D: UInt32

    @ReadonlyAttribute
    public var maxTextureDimension2D: UInt32

    @ReadonlyAttribute
    public var maxTextureDimension3D: UInt32

    @ReadonlyAttribute
    public var maxTextureArrayLayers: UInt32

    @ReadonlyAttribute
    public var maxBindGroups: UInt32

    @ReadonlyAttribute
    public var maxDynamicUniformBuffersPerPipelineLayout: UInt32

    @ReadonlyAttribute
    public var maxDynamicStorageBuffersPerPipelineLayout: UInt32

    @ReadonlyAttribute
    public var maxSampledTexturesPerShaderStage: UInt32

    @ReadonlyAttribute
    public var maxSamplersPerShaderStage: UInt32

    @ReadonlyAttribute
    public var maxStorageBuffersPerShaderStage: UInt32

    @ReadonlyAttribute
    public var maxStorageTexturesPerShaderStage: UInt32

    @ReadonlyAttribute
    public var maxUniformBuffersPerShaderStage: UInt32

    @ReadonlyAttribute
    public var maxUniformBufferBindingSize: UInt64

    @ReadonlyAttribute
    public var maxStorageBufferBindingSize: UInt64

    @ReadonlyAttribute
    public var minUniformBufferOffsetAlignment: UInt32

    @ReadonlyAttribute
    public var minStorageBufferOffsetAlignment: UInt32

    @ReadonlyAttribute
    public var maxVertexBuffers: UInt32

    @ReadonlyAttribute
    public var maxVertexAttributes: UInt32

    @ReadonlyAttribute
    public var maxVertexBufferArrayStride: UInt32

    @ReadonlyAttribute
    public var maxInterStageShaderComponents: UInt32

    @ReadonlyAttribute
    public var maxComputeWorkgroupStorageSize: UInt32

    @ReadonlyAttribute
    public var maxComputeInvocationsPerWorkgroup: UInt32

    @ReadonlyAttribute
    public var maxComputeWorkgroupSizeX: UInt32

    @ReadonlyAttribute
    public var maxComputeWorkgroupSizeY: UInt32

    @ReadonlyAttribute
    public var maxComputeWorkgroupSizeZ: UInt32

    @ReadonlyAttribute
    public var maxComputeWorkgroupsPerDimension: UInt32
}
