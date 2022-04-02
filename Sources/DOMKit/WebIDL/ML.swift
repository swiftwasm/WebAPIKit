// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ML: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.ML].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func createContext(options: MLContextOptions? = nil) -> MLContext {
        let this = jsObject
        return this[Strings.createContext].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func createContext(glContext: WebGLRenderingContext) -> MLContext {
        let this = jsObject
        return this[Strings.createContext].function!(this: this, arguments: [glContext.jsValue()]).fromJSValue()!
    }

    public func createContext(gpuDevice: GPUDevice) -> MLContext {
        let this = jsObject
        return this[Strings.createContext].function!(this: this, arguments: [gpuDevice.jsValue()]).fromJSValue()!
    }
}
