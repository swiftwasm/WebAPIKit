// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GeolocationPosition: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.GeolocationPosition].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _coords = ReadonlyAttribute(jsObject: jsObject, name: Strings.coords)
        _timestamp = ReadonlyAttribute(jsObject: jsObject, name: Strings.timestamp)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var coords: GeolocationCoordinates

    @ReadonlyAttribute
    public var timestamp: EpochTimeStamp
}
