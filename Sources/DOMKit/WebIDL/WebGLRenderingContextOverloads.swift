// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol WebGLRenderingContextOverloads: JSBridgedClass {}
public extension WebGLRenderingContextOverloads {
    func bufferData(target: GLenum, size: GLsizeiptr, usage: GLenum) {
        let this = jsObject
        _ = this[Strings.bufferData].function!(this: this, arguments: [target.jsValue(), size.jsValue(), usage.jsValue()])
    }

    func bufferData(target: GLenum, data: BufferSource?, usage: GLenum) {
        let this = jsObject
        _ = this[Strings.bufferData].function!(this: this, arguments: [target.jsValue(), data.jsValue(), usage.jsValue()])
    }

    func bufferSubData(target: GLenum, offset: GLintptr, data: BufferSource) {
        let this = jsObject
        _ = this[Strings.bufferSubData].function!(this: this, arguments: [target.jsValue(), offset.jsValue(), data.jsValue()])
    }

    func compressedTexImage2D(target: GLenum, level: GLint, internalformat: GLenum, width: GLsizei, height: GLsizei, border: GLint, data: ArrayBufferView) {
        let _arg0 = target.jsValue()
        let _arg1 = level.jsValue()
        let _arg2 = internalformat.jsValue()
        let _arg3 = width.jsValue()
        let _arg4 = height.jsValue()
        let _arg5 = border.jsValue()
        let _arg6 = data.jsValue()
        let this = jsObject
        _ = this[Strings.compressedTexImage2D].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6])
    }

    func compressedTexSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, data: ArrayBufferView) {
        let _arg0 = target.jsValue()
        let _arg1 = level.jsValue()
        let _arg2 = xoffset.jsValue()
        let _arg3 = yoffset.jsValue()
        let _arg4 = width.jsValue()
        let _arg5 = height.jsValue()
        let _arg6 = format.jsValue()
        let _arg7 = data.jsValue()
        let this = jsObject
        _ = this[Strings.compressedTexSubImage2D].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7])
    }

    func readPixels(x: GLint, y: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ArrayBufferView?) {
        let _arg0 = x.jsValue()
        let _arg1 = y.jsValue()
        let _arg2 = width.jsValue()
        let _arg3 = height.jsValue()
        let _arg4 = format.jsValue()
        let _arg5 = type.jsValue()
        let _arg6 = pixels.jsValue()
        let this = jsObject
        _ = this[Strings.readPixels].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6])
    }

    func texImage2D(target: GLenum, level: GLint, internalformat: GLint, width: GLsizei, height: GLsizei, border: GLint, format: GLenum, type: GLenum, pixels: ArrayBufferView?) {
        let _arg0 = target.jsValue()
        let _arg1 = level.jsValue()
        let _arg2 = internalformat.jsValue()
        let _arg3 = width.jsValue()
        let _arg4 = height.jsValue()
        let _arg5 = border.jsValue()
        let _arg6 = format.jsValue()
        let _arg7 = type.jsValue()
        let _arg8 = pixels.jsValue()
        let this = jsObject
        _ = this[Strings.texImage2D].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8])
    }

    func texImage2D(target: GLenum, level: GLint, internalformat: GLint, format: GLenum, type: GLenum, source: TexImageSource) {
        let _arg0 = target.jsValue()
        let _arg1 = level.jsValue()
        let _arg2 = internalformat.jsValue()
        let _arg3 = format.jsValue()
        let _arg4 = type.jsValue()
        let _arg5 = source.jsValue()
        let this = jsObject
        _ = this[Strings.texImage2D].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5])
    }

    func texSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, width: GLsizei, height: GLsizei, format: GLenum, type: GLenum, pixels: ArrayBufferView?) {
        let _arg0 = target.jsValue()
        let _arg1 = level.jsValue()
        let _arg2 = xoffset.jsValue()
        let _arg3 = yoffset.jsValue()
        let _arg4 = width.jsValue()
        let _arg5 = height.jsValue()
        let _arg6 = format.jsValue()
        let _arg7 = type.jsValue()
        let _arg8 = pixels.jsValue()
        let this = jsObject
        _ = this[Strings.texSubImage2D].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7, _arg8])
    }

    func texSubImage2D(target: GLenum, level: GLint, xoffset: GLint, yoffset: GLint, format: GLenum, type: GLenum, source: TexImageSource) {
        let _arg0 = target.jsValue()
        let _arg1 = level.jsValue()
        let _arg2 = xoffset.jsValue()
        let _arg3 = yoffset.jsValue()
        let _arg4 = format.jsValue()
        let _arg5 = type.jsValue()
        let _arg6 = source.jsValue()
        let this = jsObject
        _ = this[Strings.texSubImage2D].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6])
    }

    func uniform1fv(location: WebGLUniformLocation?, v: Float32List) {
        let this = jsObject
        _ = this[Strings.uniform1fv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniform2fv(location: WebGLUniformLocation?, v: Float32List) {
        let this = jsObject
        _ = this[Strings.uniform2fv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniform3fv(location: WebGLUniformLocation?, v: Float32List) {
        let this = jsObject
        _ = this[Strings.uniform3fv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniform4fv(location: WebGLUniformLocation?, v: Float32List) {
        let this = jsObject
        _ = this[Strings.uniform4fv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniform1iv(location: WebGLUniformLocation?, v: Int32List) {
        let this = jsObject
        _ = this[Strings.uniform1iv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniform2iv(location: WebGLUniformLocation?, v: Int32List) {
        let this = jsObject
        _ = this[Strings.uniform2iv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniform3iv(location: WebGLUniformLocation?, v: Int32List) {
        let this = jsObject
        _ = this[Strings.uniform3iv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniform4iv(location: WebGLUniformLocation?, v: Int32List) {
        let this = jsObject
        _ = this[Strings.uniform4iv].function!(this: this, arguments: [location.jsValue(), v.jsValue()])
    }

    func uniformMatrix2fv(location: WebGLUniformLocation?, transpose: GLboolean, value: Float32List) {
        let this = jsObject
        _ = this[Strings.uniformMatrix2fv].function!(this: this, arguments: [location.jsValue(), transpose.jsValue(), value.jsValue()])
    }

    func uniformMatrix3fv(location: WebGLUniformLocation?, transpose: GLboolean, value: Float32List) {
        let this = jsObject
        _ = this[Strings.uniformMatrix3fv].function!(this: this, arguments: [location.jsValue(), transpose.jsValue(), value.jsValue()])
    }

    func uniformMatrix4fv(location: WebGLUniformLocation?, transpose: GLboolean, value: Float32List) {
        let this = jsObject
        _ = this[Strings.uniformMatrix4fv].function!(this: this, arguments: [location.jsValue(), transpose.jsValue(), value.jsValue()])
    }
}
