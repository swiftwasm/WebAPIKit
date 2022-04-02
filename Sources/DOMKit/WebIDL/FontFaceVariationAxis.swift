// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FontFaceVariationAxis: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.FontFaceVariationAxis].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _axisTag = ReadonlyAttribute(jsObject: jsObject, name: Strings.axisTag)
        _minimumValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.minimumValue)
        _maximumValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.maximumValue)
        _defaultValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.defaultValue)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var axisTag: String

    @ReadonlyAttribute
    public var minimumValue: Double

    @ReadonlyAttribute
    public var maximumValue: Double

    @ReadonlyAttribute
    public var defaultValue: Double
}
