import DOM
import JavaScriptKit

public typealias GLintptr = Int32

extension WebGLRenderingContext: RenderingContext {
    public static var contextID: JSString { "webgl" }
}

extension WebGLRenderingContext: OffscreenRenderingContext {}
