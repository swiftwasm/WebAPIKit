// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WEBGL_draw_instanced_base_vertex_base_instance: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.WEBGL_draw_instanced_base_vertex_base_instance].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func drawArraysInstancedBaseInstanceWEBGL(mode: GLenum, first: GLint, count: GLsizei, instanceCount: GLsizei, baseInstance: GLuint) {
        _ = jsObject[Strings.drawArraysInstancedBaseInstanceWEBGL]!(mode.jsValue(), first.jsValue(), count.jsValue(), instanceCount.jsValue(), baseInstance.jsValue())
    }

    public func drawElementsInstancedBaseVertexBaseInstanceWEBGL(mode: GLenum, count: GLsizei, type: GLenum, offset: GLintptr, instanceCount: GLsizei, baseVertex: GLint, baseInstance: GLuint) {
        let _arg0 = mode.jsValue()
        let _arg1 = count.jsValue()
        let _arg2 = type.jsValue()
        let _arg3 = offset.jsValue()
        let _arg4 = instanceCount.jsValue()
        let _arg5 = baseVertex.jsValue()
        let _arg6 = baseInstance.jsValue()
        _ = jsObject[Strings.drawElementsInstancedBaseVertexBaseInstanceWEBGL]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6)
    }
}