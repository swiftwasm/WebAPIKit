// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Credential: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.Credential].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var type: String

    @inlinable public static func isConditionalMediationAvailable() -> Bool {
        let this = constructor
        return this[Strings.isConditionalMediationAvailable].function!(this: this, arguments: []).fromJSValue()!
    }
}
