@_exported import ECMAScript
import JavaScriptKit

/* TODO: fix this */
public typealias __UNSUPPORTED_BIGINT__ = JSValue

public typealias WindowProxy = Window

public extension HTMLElement {
    convenience init?(from element: Element) {
        self.init(from: .object(element.jsObject))
    }
}

public let globalThis = Window(from: JSObject.global.jsValue)!

public typealias Uint8ClampedArray = JSUInt8ClampedArray
// public typealias CSSColorValue_or_CSSStyleValue = CSSStyleValue
// public typealias Any_CSSColorValue_or_CSSStyleValue = CSSStyleValue
public typealias Blob_or_MediaSource = Blob
public typealias HTMLOrSVGImageElement = HTMLImageElement
public typealias HTMLOrSVGScriptElement = HTMLScriptElement
public typealias BodyInit = XMLHttpRequestBodyInit
public typealias CustomElementConstructor = JSFunction
public typealias GLintptr = Int32

public protocol RenderingContext: JSValueCompatible {}

extension GPUCanvasContext: RenderingContext {}
extension ImageBitmapRenderingContext: RenderingContext {}
extension OffscreenCanvasRenderingContext2D: RenderingContext {}
extension WebGL2RenderingContext: RenderingContext {}
extension WebGLRenderingContext: RenderingContext {}

public protocol OffscreenRenderingContext: JSValueCompatible {}

extension GPUCanvasContext: OffscreenRenderingContext {}
extension ImageBitmapRenderingContext: OffscreenRenderingContext {}
extension OffscreenCanvasRenderingContext2D: OffscreenRenderingContext {}
extension WebGL2RenderingContext: OffscreenRenderingContext {}
extension WebGLRenderingContext: OffscreenRenderingContext {}

extension Strings {
    @usableFromInline static let getContext: JSString = "getContext"
}

public extension HTMLCanvasElement {
    @inlinable func getContext<Context: RenderingContext>(
        contextId: String,
        options: JSValue? = nil
    ) -> Context? {
        let this = jsObject
        return this[Strings.getContext].function!(
            this: this,
            arguments: [contextId.jsValue, options?.jsValue ?? .undefined]
        ).fromJSValue()!
    }
}

public extension OffscreenCanvas {
    @inlinable func getContext<Context: OffscreenRenderingContext>(
        contextId: OffscreenRenderingContextId,
        options: JSValue? = nil
    ) -> Context? {
        let this = jsObject
        return this[Strings.getContext].function!(
            this: this,
            arguments: [contextId.jsValue, options?.jsValue ?? .undefined]
        ).fromJSValue()!
    }
}
