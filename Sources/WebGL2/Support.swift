import DOM

extension WebGL2RenderingContext: RenderingContext {
  public static var contextID: JSString { "webgl2" }
}

extension WebGL2RenderingContext: OffscreenRenderingContext {}
