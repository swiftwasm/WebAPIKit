import JavaScriptKit

public protocol RenderingContext: JSValueCompatible {
    /// Textual identifier of this context type, passed to `getContext` under the hood.
    static var contextID: JSString { get }
}

extension GPUCanvasContext: RenderingContext {
    public static var contextID: JSString { "webgpu" }
}

extension ImageBitmapRenderingContext: RenderingContext {
    public static var contextID: JSString { "bitmaprenderer" }
}

extension CanvasRenderingContext2D: RenderingContext {
    public static var contextID: JSString { "2d" }
}

extension WebGL2RenderingContext: RenderingContext {
    public static var contextID: JSString { "webgl2" }
}

extension WebGLRenderingContext: RenderingContext {
    public static var contextID: JSString { "webgl" }
}

public protocol OffscreenRenderingContext: JSValueCompatible {
    static var contextID: JSString { get }
}

extension GPUCanvasContext: OffscreenRenderingContext {}
extension ImageBitmapRenderingContext: OffscreenRenderingContext {}
extension CanvasRenderingContext2D: OffscreenRenderingContext {}
extension WebGL2RenderingContext: OffscreenRenderingContext {}
extension WebGLRenderingContext: OffscreenRenderingContext {}
extension OffscreenCanvasRenderingContext2D: OffscreenRenderingContext {
    public static var contextID: JSString { "2d" }
}

extension Strings {
    @usableFromInline static let getContext: JSString = "getContext"
}

public extension HTMLCanvasElement {
    @inlinable func getContext<Context: RenderingContext>(
        _ contextType: Context.Type,
        options: JSValue? = nil
    ) -> Context? {
        let this = jsObject
        return this[Strings.getContext].function!(
            this: this,
            arguments: [contextType.contextID.jsValue, options?.jsValue ?? .undefined]
        ).fromJSValue()!
    }
}

public extension OffscreenCanvas {
    @inlinable func getContext<Context: OffscreenRenderingContext>(
        _ contextType: Context.Type,
        options: JSValue? = nil
    ) -> Context? {
        let this = jsObject
        return this[Strings.getContext].function!(
            this: this,
            arguments: [contextType.contextID.jsValue, options?.jsValue ?? .undefined]
        ).fromJSValue()!
    }
}
