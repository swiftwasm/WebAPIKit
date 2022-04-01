// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WritableStream: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.WritableStream.function! }

    private enum Keys {
        static let getWriter: JSString = "getWriter"
        static let locked: JSString = "locked"
        static let abort: JSString = "abort"
        static let close: JSString = "close"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _locked = ReadonlyAttribute(jsObject: jsObject, name: Keys.locked)
        self.jsObject = jsObject
    }

    public convenience init(underlyingSink: JSObject? = nil, strategy: QueuingStrategy? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(underlyingSink?.jsValue() ?? .undefined, strategy?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var locked: Bool

    public func abort(reason: JSValue? = nil) -> JSPromise {
        jsObject[Keys.abort]!(reason?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func abort(reason: JSValue? = nil) async throws {
        let _promise: JSPromise = jsObject[Keys.abort]!(reason?.jsValue() ?? .undefined).fromJSValue()!
        _ = try await _promise.get()
    }

    public func close() -> JSPromise {
        jsObject[Keys.close]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func close() async throws {
        let _promise: JSPromise = jsObject[Keys.close]!().fromJSValue()!
        _ = try await _promise.get()
    }

    public func getWriter() -> WritableStreamDefaultWriter {
        jsObject[Keys.getWriter]!().fromJSValue()!
    }
}
