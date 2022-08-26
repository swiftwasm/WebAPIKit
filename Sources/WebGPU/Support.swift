import DOM
import JavaScriptKit

extension GPUCanvasContext: RenderingContext {
  public static var contextID: JSString { "webgpu" }
}

extension GPUCanvasContext: OffscreenRenderingContext {}
