// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRWebGLLayer: XRLayer {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.XRWebGLLayer].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _antialias = ReadonlyAttribute(jsObject: jsObject, name: Strings.antialias)
        _ignoreDepthValues = ReadonlyAttribute(jsObject: jsObject, name: Strings.ignoreDepthValues)
        _fixedFoveation = ReadWriteAttribute(jsObject: jsObject, name: Strings.fixedFoveation)
        _framebuffer = ReadonlyAttribute(jsObject: jsObject, name: Strings.framebuffer)
        _framebufferWidth = ReadonlyAttribute(jsObject: jsObject, name: Strings.framebufferWidth)
        _framebufferHeight = ReadonlyAttribute(jsObject: jsObject, name: Strings.framebufferHeight)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(session: XRSession, context: XRWebGLRenderingContext, layerInit: XRWebGLLayerInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [session.jsValue, context.jsValue, layerInit?.jsValue ?? .undefined]))
    }

    @ReadonlyAttribute
    public var antialias: Bool

    @ReadonlyAttribute
    public var ignoreDepthValues: Bool

    @ReadWriteAttribute
    public var fixedFoveation: Float?

    @ReadonlyAttribute
    public var framebuffer: WebGLFramebuffer?

    @ReadonlyAttribute
    public var framebufferWidth: UInt32

    @ReadonlyAttribute
    public var framebufferHeight: UInt32

    @inlinable public func getViewport(view: XRView) -> XRViewport? {
        let this = jsObject
        return this[Strings.getViewport].function!(this: this, arguments: [view.jsValue]).fromJSValue()!
    }

    @inlinable public static func getNativeFramebufferScaleFactor(session: XRSession) -> Double {
        let this = constructor
        return this[Strings.getNativeFramebufferScaleFactor].function!(this: this, arguments: [session.jsValue]).fromJSValue()!
    }
}
