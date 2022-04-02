// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext: ConvertibleToJSValue {}
extension GPUCanvasContext: Any_GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext {}
extension ImageBitmapRenderingContext: Any_GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext {}
extension OffscreenCanvasRenderingContext2D: Any_GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext {}
extension WebGL2RenderingContext: Any_GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext {}
extension WebGLRenderingContext: Any_GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext {}

public enum GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext: JSValueCompatible, Any_GPUCanvasContext_or_ImageBitmapRenderingContext_or_OffscreenCanvasRenderingContext2D_or_WebGL2RenderingContext_or_WebGLRenderingContext {
    case gPUCanvasContext(GPUCanvasContext)
    case imageBitmapRenderingContext(ImageBitmapRenderingContext)
    case offscreenCanvasRenderingContext2D(OffscreenCanvasRenderingContext2D)
    case webGL2RenderingContext(WebGL2RenderingContext)
    case webGLRenderingContext(WebGLRenderingContext)

    public static func construct(from value: JSValue) -> Self? {
        if let gPUCanvasContext: GPUCanvasContext = value.fromJSValue() {
            return .gPUCanvasContext(gPUCanvasContext)
        }
        if let imageBitmapRenderingContext: ImageBitmapRenderingContext = value.fromJSValue() {
            return .imageBitmapRenderingContext(imageBitmapRenderingContext)
        }
        if let offscreenCanvasRenderingContext2D: OffscreenCanvasRenderingContext2D = value.fromJSValue() {
            return .offscreenCanvasRenderingContext2D(offscreenCanvasRenderingContext2D)
        }
        if let webGL2RenderingContext: WebGL2RenderingContext = value.fromJSValue() {
            return .webGL2RenderingContext(webGL2RenderingContext)
        }
        if let webGLRenderingContext: WebGLRenderingContext = value.fromJSValue() {
            return .webGLRenderingContext(webGLRenderingContext)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .gPUCanvasContext(gPUCanvasContext):
            return gPUCanvasContext.jsValue()
        case let .imageBitmapRenderingContext(imageBitmapRenderingContext):
            return imageBitmapRenderingContext.jsValue()
        case let .offscreenCanvasRenderingContext2D(offscreenCanvasRenderingContext2D):
            return offscreenCanvasRenderingContext2D.jsValue()
        case let .webGL2RenderingContext(webGL2RenderingContext):
            return webGL2RenderingContext.jsValue()
        case let .webGLRenderingContext(webGLRenderingContext):
            return webGLRenderingContext.jsValue()
        }
    }
}
