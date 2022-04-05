// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUPrimitiveState: BridgedDictionary {
    public convenience init(topology: GPUPrimitiveTopology, stripIndexFormat: GPUIndexFormat, frontFace: GPUFrontFace, cullMode: GPUCullMode, unclippedDepth: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.topology] = topology.jsValue
        object[Strings.stripIndexFormat] = stripIndexFormat.jsValue
        object[Strings.frontFace] = frontFace.jsValue
        object[Strings.cullMode] = cullMode.jsValue
        object[Strings.unclippedDepth] = unclippedDepth.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _topology = ReadWriteAttribute(jsObject: object, name: Strings.topology)
        _stripIndexFormat = ReadWriteAttribute(jsObject: object, name: Strings.stripIndexFormat)
        _frontFace = ReadWriteAttribute(jsObject: object, name: Strings.frontFace)
        _cullMode = ReadWriteAttribute(jsObject: object, name: Strings.cullMode)
        _unclippedDepth = ReadWriteAttribute(jsObject: object, name: Strings.unclippedDepth)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var topology: GPUPrimitiveTopology

    @ReadWriteAttribute
    public var stripIndexFormat: GPUIndexFormat

    @ReadWriteAttribute
    public var frontFace: GPUFrontFace

    @ReadWriteAttribute
    public var cullMode: GPUCullMode

    @ReadWriteAttribute
    public var unclippedDepth: Bool
}
