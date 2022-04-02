// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPURenderBundleEncoder: JSBridgedClass, GPUObjectBase, GPUCommandsMixin, GPUDebugCommandsMixin, GPUProgrammablePassEncoder, GPURenderEncoderBase {
    public class var constructor: JSFunction { JSObject.global[Strings.GPURenderBundleEncoder].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func finish(descriptor: GPURenderBundleDescriptor? = nil) -> GPURenderBundle {
        jsObject[Strings.finish]!(descriptor?.jsValue() ?? .undefined).fromJSValue()!
    }
}
