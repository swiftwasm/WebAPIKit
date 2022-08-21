import JavaScriptKit

public protocol RenderingContext: JSValueCompatible {
    /// Textual identifier of this context type, passed to `getContext` under the hood.
    static var contextID: JSString { get }
}

extension ImageBitmapRenderingContext: RenderingContext {
    public static var contextID: JSString { "bitmaprenderer" }
}

extension CanvasRenderingContext2D: RenderingContext {
    public static var contextID: JSString { "2d" }
}

public protocol OffscreenRenderingContext: JSValueCompatible {
    static var contextID: JSString { get }
}

extension ImageBitmapRenderingContext: OffscreenRenderingContext {}
extension CanvasRenderingContext2D: OffscreenRenderingContext {}
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
