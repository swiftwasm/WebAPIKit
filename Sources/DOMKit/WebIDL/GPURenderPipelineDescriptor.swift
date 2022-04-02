// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPURenderPipelineDescriptor: BridgedDictionary {
    public convenience init(vertex: GPUVertexState, primitive: GPUPrimitiveState, depthStencil: GPUDepthStencilState, multisample: GPUMultisampleState, fragment: GPUFragmentState) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.vertex] = vertex.jsValue()
        object[Strings.primitive] = primitive.jsValue()
        object[Strings.depthStencil] = depthStencil.jsValue()
        object[Strings.multisample] = multisample.jsValue()
        object[Strings.fragment] = fragment.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _vertex = ReadWriteAttribute(jsObject: object, name: Strings.vertex)
        _primitive = ReadWriteAttribute(jsObject: object, name: Strings.primitive)
        _depthStencil = ReadWriteAttribute(jsObject: object, name: Strings.depthStencil)
        _multisample = ReadWriteAttribute(jsObject: object, name: Strings.multisample)
        _fragment = ReadWriteAttribute(jsObject: object, name: Strings.fragment)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var vertex: GPUVertexState

    @ReadWriteAttribute
    public var primitive: GPUPrimitiveState

    @ReadWriteAttribute
    public var depthStencil: GPUDepthStencilState

    @ReadWriteAttribute
    public var multisample: GPUMultisampleState

    @ReadWriteAttribute
    public var fragment: GPUFragmentState
}