// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoColorSpace: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.VideoColorSpace].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _primaries = ReadonlyAttribute(jsObject: jsObject, name: Strings.primaries)
        _transfer = ReadonlyAttribute(jsObject: jsObject, name: Strings.transfer)
        _matrix = ReadonlyAttribute(jsObject: jsObject, name: Strings.matrix)
        _fullRange = ReadonlyAttribute(jsObject: jsObject, name: Strings.fullRange)
        self.jsObject = jsObject
    }

    public convenience init(init: VideoColorSpaceInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(`init`?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var primaries: VideoColorPrimaries?

    @ReadonlyAttribute
    public var transfer: VideoTransferCharacteristics?

    @ReadonlyAttribute
    public var matrix: VideoMatrixCoefficients?

    @ReadonlyAttribute
    public var fullRange: Bool?

    public func toJSON() -> VideoColorSpaceInit {
        jsObject[Strings.toJSON]!().fromJSValue()!
    }
}
