// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FontFaceDescriptors: BridgedDictionary {
    public convenience init(style: String, weight: String, stretch: String, unicodeRange: String, variant: String, featureSettings: String, variationSettings: String, display: String, ascentOverride: String, descentOverride: String, lineGapOverride: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.style] = style.jsValue()
        object[Strings.weight] = weight.jsValue()
        object[Strings.stretch] = stretch.jsValue()
        object[Strings.unicodeRange] = unicodeRange.jsValue()
        object[Strings.variant] = variant.jsValue()
        object[Strings.featureSettings] = featureSettings.jsValue()
        object[Strings.variationSettings] = variationSettings.jsValue()
        object[Strings.display] = display.jsValue()
        object[Strings.ascentOverride] = ascentOverride.jsValue()
        object[Strings.descentOverride] = descentOverride.jsValue()
        object[Strings.lineGapOverride] = lineGapOverride.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _style = ReadWriteAttribute(jsObject: object, name: Strings.style)
        _weight = ReadWriteAttribute(jsObject: object, name: Strings.weight)
        _stretch = ReadWriteAttribute(jsObject: object, name: Strings.stretch)
        _unicodeRange = ReadWriteAttribute(jsObject: object, name: Strings.unicodeRange)
        _variant = ReadWriteAttribute(jsObject: object, name: Strings.variant)
        _featureSettings = ReadWriteAttribute(jsObject: object, name: Strings.featureSettings)
        _variationSettings = ReadWriteAttribute(jsObject: object, name: Strings.variationSettings)
        _display = ReadWriteAttribute(jsObject: object, name: Strings.display)
        _ascentOverride = ReadWriteAttribute(jsObject: object, name: Strings.ascentOverride)
        _descentOverride = ReadWriteAttribute(jsObject: object, name: Strings.descentOverride)
        _lineGapOverride = ReadWriteAttribute(jsObject: object, name: Strings.lineGapOverride)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var style: String

    @ReadWriteAttribute
    public var weight: String

    @ReadWriteAttribute
    public var stretch: String

    @ReadWriteAttribute
    public var unicodeRange: String

    @ReadWriteAttribute
    public var variant: String

    @ReadWriteAttribute
    public var featureSettings: String

    @ReadWriteAttribute
    public var variationSettings: String

    @ReadWriteAttribute
    public var display: String

    @ReadWriteAttribute
    public var ascentOverride: String

    @ReadWriteAttribute
    public var descentOverride: String

    @ReadWriteAttribute
    public var lineGapOverride: String
}