// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NDEFReader: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.NDEFReader].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onreading = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onreading)
        _onreadingerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onreadingerror)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ClosureAttribute1Optional
    public var onreading: EventHandler

    @ClosureAttribute1Optional
    public var onreadingerror: EventHandler

    public func scan(options: NDEFScanOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.scan].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func scan(options: NDEFScanOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.scan].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func write(message: NDEFMessageSource, options: NDEFWriteOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.write].function!(this: this, arguments: [message.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func write(message: NDEFMessageSource, options: NDEFWriteOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.write].function!(this: this, arguments: [message.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func makeReadOnly(options: NDEFMakeReadOnlyOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.makeReadOnly].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func makeReadOnly(options: NDEFMakeReadOnlyOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.makeReadOnly].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }
}
