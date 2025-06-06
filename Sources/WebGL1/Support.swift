import DOM
import JavaScriptKit

extension WebGLRenderingContext: RenderingContext {
    public static var contextID: JSString { "webgl" }
}

extension WebGLRenderingContext: OffscreenRenderingContext {}
