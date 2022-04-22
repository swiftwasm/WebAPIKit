// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_OffscreenRenderingContext: ConvertibleToJSValue {}
extension GPUCanvasContext: Any_OffscreenRenderingContext {}
extension ImageBitmapRenderingContext: Any_OffscreenRenderingContext {}
extension OffscreenCanvasRenderingContext2D: Any_OffscreenRenderingContext {}
extension WebGL2RenderingContext: Any_OffscreenRenderingContext {}
extension WebGLRenderingContext: Any_OffscreenRenderingContext {}

public enum OffscreenRenderingContext: JSValueCompatible, Any_OffscreenRenderingContext {
    case gpuCanvasContext(GPUCanvasContext)
    case imageBitmapRenderingContext(ImageBitmapRenderingContext)
    case offscreenCanvasRenderingContext2D(OffscreenCanvasRenderingContext2D)
    case webGL2RenderingContext(WebGL2RenderingContext)
    case webGLRenderingContext(WebGLRenderingContext)

    public static func construct(from value: JSValue) -> Self? {
        if let gpuCanvasContext: GPUCanvasContext = value.fromJSValue() {
            return .gpuCanvasContext(gpuCanvasContext)
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

    public var jsValue: JSValue {
        switch self {
        case let .gpuCanvasContext(gpuCanvasContext):
            return gpuCanvasContext.jsValue
        case let .imageBitmapRenderingContext(imageBitmapRenderingContext):
            return imageBitmapRenderingContext.jsValue
        case let .offscreenCanvasRenderingContext2D(offscreenCanvasRenderingContext2D):
            return offscreenCanvasRenderingContext2D.jsValue
        case let .webGL2RenderingContext(webGL2RenderingContext):
            return webGL2RenderingContext.jsValue
        case let .webGLRenderingContext(webGLRenderingContext):
            return webGLRenderingContext.jsValue
        }
    }
}
