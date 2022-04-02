// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Crypto: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.Crypto].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _subtle = ReadonlyAttribute(jsObject: jsObject, name: Strings.subtle)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var subtle: SubtleCrypto

    @inlinable public func getRandomValues(array: ArrayBufferView) -> ArrayBufferView {
        let this = jsObject
        return this[Strings.getRandomValues].function!(this: this, arguments: [array.jsValue()]).fromJSValue()!
    }

    @inlinable public func randomUUID() -> String {
        let this = jsObject
        return this[Strings.randomUUID].function!(this: this, arguments: []).fromJSValue()!
    }
}
