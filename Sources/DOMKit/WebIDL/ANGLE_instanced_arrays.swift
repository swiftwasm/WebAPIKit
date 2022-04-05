// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ANGLE_instanced_arrays: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.ANGLE_instanced_arrays].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public static let VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE: GLenum = 0x88FE

    @inlinable public func drawArraysInstancedANGLE(mode: GLenum, first: GLint, count: GLsizei, primcount: GLsizei) {
        let this = jsObject
        _ = this[Strings.drawArraysInstancedANGLE].function!(this: this, arguments: [mode.jsValue, first.jsValue, count.jsValue, primcount.jsValue])
    }

    @inlinable public func drawElementsInstancedANGLE(mode: GLenum, count: GLsizei, type: GLenum, offset: GLintptr, primcount: GLsizei) {
        let this = jsObject
        _ = this[Strings.drawElementsInstancedANGLE].function!(this: this, arguments: [mode.jsValue, count.jsValue, type.jsValue, offset.jsValue, primcount.jsValue])
    }

    @inlinable public func vertexAttribDivisorANGLE(index: GLuint, divisor: GLuint) {
        let this = jsObject
        _ = this[Strings.vertexAttribDivisorANGLE].function!(this: this, arguments: [index.jsValue, divisor.jsValue])
    }
}
