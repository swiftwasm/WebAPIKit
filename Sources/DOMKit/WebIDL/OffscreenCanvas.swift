// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class OffscreenCanvas: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.OffscreenCanvas.function! }

    private enum Keys {
        static let convertToBlob: JSString = "convertToBlob"
        static let getContext: JSString = "getContext"
        static let height: JSString = "height"
        static let oncontextlost: JSString = "oncontextlost"
        static let oncontextrestored: JSString = "oncontextrestored"
        static let transferToImageBitmap: JSString = "transferToImageBitmap"
        static let width: JSString = "width"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _width = ReadWriteAttribute(jsObject: jsObject, name: Keys.width)
        _height = ReadWriteAttribute(jsObject: jsObject, name: Keys.height)
        _oncontextlost = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.oncontextlost)
        _oncontextrestored = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.oncontextrestored)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(width: UInt64, height: UInt64) {
        self.init(unsafelyWrapping: Self.constructor.new(width.jsValue(), height.jsValue()))
    }

    @ReadWriteAttribute
    public var width: UInt64

    @ReadWriteAttribute
    public var height: UInt64

    public func getContext(contextId: OffscreenRenderingContextId, options: JSValue? = nil) -> OffscreenRenderingContext? {
        jsObject[Keys.getContext]!(contextId.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func transferToImageBitmap() -> ImageBitmap {
        jsObject[Keys.transferToImageBitmap]!().fromJSValue()!
    }

    public func convertToBlob(options: ImageEncodeOptions? = nil) -> JSPromise {
        jsObject[Keys.convertToBlob]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func convertToBlob(options: ImageEncodeOptions? = nil) async throws -> Blob {
        let _promise: JSPromise = jsObject[Keys.convertToBlob]!(options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ClosureAttribute.Optional1
    public var oncontextlost: EventHandler

    @ClosureAttribute.Optional1
    public var oncontextrestored: EventHandler
}
