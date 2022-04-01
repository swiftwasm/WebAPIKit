// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let crossOriginIsolated: JSString = "crossOriginIsolated"
    static let queueMicrotask: JSString = "queueMicrotask"
    static let structuredClone: JSString = "structuredClone"
    static let origin: JSString = "origin"
    static let setTimeout: JSString = "setTimeout"
    static let performance: JSString = "performance"
    static let setInterval: JSString = "setInterval"
    static let btoa: JSString = "btoa"
    static let createImageBitmap: JSString = "createImageBitmap"
    static let reportError: JSString = "reportError"
    static let clearTimeout: JSString = "clearTimeout"
    static let atob: JSString = "atob"
    static let clearInterval: JSString = "clearInterval"
    static let fetch: JSString = "fetch"
    static let isSecureContext: JSString = "isSecureContext"
}

public protocol WindowOrWorkerGlobalScope: JSBridgedClass {}
public extension WindowOrWorkerGlobalScope {
    var performance: Performance { ReadonlyAttribute[Keys.performance, in: jsObject] }

    var origin: String { ReadonlyAttribute[Keys.origin, in: jsObject] }

    var isSecureContext: Bool { ReadonlyAttribute[Keys.isSecureContext, in: jsObject] }

    var crossOriginIsolated: Bool { ReadonlyAttribute[Keys.crossOriginIsolated, in: jsObject] }

    func reportError(e: JSValue) {
        _ = jsObject[Keys.reportError]!(e.jsValue())
    }

    func btoa(data: String) -> String {
        jsObject[Keys.btoa]!(data.jsValue()).fromJSValue()!
    }

    func atob(data: String) -> String {
        jsObject[Keys.atob]!(data.jsValue()).fromJSValue()!
    }

    func setTimeout(handler: TimerHandler, timeout: Int32? = nil, arguments: JSValue...) -> Int32 {
        jsObject[Keys.setTimeout]!(handler.jsValue(), timeout?.jsValue() ?? .undefined, arguments.jsValue()).fromJSValue()!
    }

    func clearTimeout(id: Int32? = nil) {
        _ = jsObject[Keys.clearTimeout]!(id?.jsValue() ?? .undefined)
    }

    func setInterval(handler: TimerHandler, timeout: Int32? = nil, arguments: JSValue...) -> Int32 {
        jsObject[Keys.setInterval]!(handler.jsValue(), timeout?.jsValue() ?? .undefined, arguments.jsValue()).fromJSValue()!
    }

    func clearInterval(id: Int32? = nil) {
        _ = jsObject[Keys.clearInterval]!(id?.jsValue() ?? .undefined)
    }

    // XXX: method 'queueMicrotask' is ignored

    func createImageBitmap(image: ImageBitmapSource, options: ImageBitmapOptions? = nil) -> JSPromise {
        jsObject[Keys.createImageBitmap]!(image.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    func createImageBitmap(image: ImageBitmapSource, options: ImageBitmapOptions? = nil) async throws -> ImageBitmap {
        let _promise: JSPromise = jsObject[Keys.createImageBitmap]!(image.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    func createImageBitmap(image: ImageBitmapSource, sx: Int32, sy: Int32, sw: Int32, sh: Int32, options: ImageBitmapOptions? = nil) -> JSPromise {
        let _arg0 = image.jsValue()
        let _arg1 = sx.jsValue()
        let _arg2 = sy.jsValue()
        let _arg3 = sw.jsValue()
        let _arg4 = sh.jsValue()
        let _arg5 = options?.jsValue() ?? .undefined
        return jsObject[Keys.createImageBitmap]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    func createImageBitmap(image: ImageBitmapSource, sx: Int32, sy: Int32, sw: Int32, sh: Int32, options: ImageBitmapOptions? = nil) async throws -> ImageBitmap {
        let _arg0 = image.jsValue()
        let _arg1 = sx.jsValue()
        let _arg2 = sy.jsValue()
        let _arg3 = sw.jsValue()
        let _arg4 = sh.jsValue()
        let _arg5 = options?.jsValue() ?? .undefined
        let _promise: JSPromise = jsObject[Keys.createImageBitmap]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    func structuredClone(value: JSValue, options: StructuredSerializeOptions? = nil) -> JSValue {
        jsObject[Keys.structuredClone]!(value.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    func fetch(input: RequestInfo, init: RequestInit? = nil) -> JSPromise {
        jsObject[Keys.fetch]!(input.jsValue(), `init`?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    func fetch(input: RequestInfo, init: RequestInit? = nil) async throws -> Response {
        let _promise: JSPromise = jsObject[Keys.fetch]!(input.jsValue(), `init`?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
