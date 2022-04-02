// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GeolocationPositionError: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.GeolocationPositionError].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _code = ReadonlyAttribute(jsObject: jsObject, name: Strings.code)
        _message = ReadonlyAttribute(jsObject: jsObject, name: Strings.message)
        self.jsObject = jsObject
    }

    public static let PERMISSION_DENIED: UInt16 = 1

    public static let POSITION_UNAVAILABLE: UInt16 = 2

    public static let TIMEOUT: UInt16 = 3

    @ReadonlyAttribute
    public var code: UInt16

    @ReadonlyAttribute
    public var message: String
}
