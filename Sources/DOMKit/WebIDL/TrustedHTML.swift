// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TrustedHTML: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.TrustedHTML].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }

    public func toJSON() -> String {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }

    public static func fromLiteral(templateStringsArray: JSObject) -> Self {
        let this = constructor
        return this[Strings.fromLiteral].function!(this: this, arguments: [templateStringsArray.jsValue()]).fromJSValue()!
    }
}
