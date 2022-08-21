import DOM

extension GPUCanvasContext: RenderingContext {
  public static var contextID: JSString { "webgpu" }
}

extension GPUCanvasContext: OffscreenRenderingContext {}
