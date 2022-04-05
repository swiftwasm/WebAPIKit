// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_RenderingContext: ConvertibleToJSValue {}
extension CanvasRenderingContext2D: Any_RenderingContext {}
extension GPUCanvasContext: Any_RenderingContext {}
extension ImageBitmapRenderingContext: Any_RenderingContext {}
extension WebGL2RenderingContext: Any_RenderingContext {}
extension WebGLRenderingContext: Any_RenderingContext {}

public enum RenderingContext: JSValueCompatible, Any_RenderingContext {
    case canvasRenderingContext2D(CanvasRenderingContext2D)
    case gPUCanvasContext(GPUCanvasContext)
    case imageBitmapRenderingContext(ImageBitmapRenderingContext)
    case webGL2RenderingContext(WebGL2RenderingContext)
    case webGLRenderingContext(WebGLRenderingContext)

    public static func construct(from value: JSValue) -> Self? {
        if let canvasRenderingContext2D: CanvasRenderingContext2D = value.fromJSValue() {
            return .canvasRenderingContext2D(canvasRenderingContext2D)
        }
        if let gPUCanvasContext: GPUCanvasContext = value.fromJSValue() {
            return .gPUCanvasContext(gPUCanvasContext)
        }
        if let imageBitmapRenderingContext: ImageBitmapRenderingContext = value.fromJSValue() {
            return .imageBitmapRenderingContext(imageBitmapRenderingContext)
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
        case let .canvasRenderingContext2D(canvasRenderingContext2D):
            return canvasRenderingContext2D.jsValue
        case let .gPUCanvasContext(gPUCanvasContext):
            return gPUCanvasContext.jsValue
        case let .imageBitmapRenderingContext(imageBitmapRenderingContext):
            return imageBitmapRenderingContext.jsValue
        case let .webGL2RenderingContext(webGL2RenderingContext):
            return webGL2RenderingContext.jsValue
        case let .webGLRenderingContext(webGLRenderingContext):
            return webGLRenderingContext.jsValue
        }
    }
}