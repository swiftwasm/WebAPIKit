// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FontFace: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.FontFace].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _family = ReadWriteAttribute(jsObject: jsObject, name: Strings.family)
        _style = ReadWriteAttribute(jsObject: jsObject, name: Strings.style)
        _weight = ReadWriteAttribute(jsObject: jsObject, name: Strings.weight)
        _stretch = ReadWriteAttribute(jsObject: jsObject, name: Strings.stretch)
        _unicodeRange = ReadWriteAttribute(jsObject: jsObject, name: Strings.unicodeRange)
        _variant = ReadWriteAttribute(jsObject: jsObject, name: Strings.variant)
        _featureSettings = ReadWriteAttribute(jsObject: jsObject, name: Strings.featureSettings)
        _variationSettings = ReadWriteAttribute(jsObject: jsObject, name: Strings.variationSettings)
        _display = ReadWriteAttribute(jsObject: jsObject, name: Strings.display)
        _ascentOverride = ReadWriteAttribute(jsObject: jsObject, name: Strings.ascentOverride)
        _descentOverride = ReadWriteAttribute(jsObject: jsObject, name: Strings.descentOverride)
        _lineGapOverride = ReadWriteAttribute(jsObject: jsObject, name: Strings.lineGapOverride)
        _status = ReadonlyAttribute(jsObject: jsObject, name: Strings.status)
        _loaded = ReadonlyAttribute(jsObject: jsObject, name: Strings.loaded)
        _features = ReadonlyAttribute(jsObject: jsObject, name: Strings.features)
        _variations = ReadonlyAttribute(jsObject: jsObject, name: Strings.variations)
        _palettes = ReadonlyAttribute(jsObject: jsObject, name: Strings.palettes)
        self.jsObject = jsObject
    }

    public convenience init(family: String, source: __UNSUPPORTED_UNION__, descriptors: FontFaceDescriptors? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(family.jsValue(), source.jsValue(), descriptors?.jsValue() ?? .undefined))
    }

    @ReadWriteAttribute
    public var family: String

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

    @ReadonlyAttribute
    public var status: FontFaceLoadStatus

    public func load() -> JSPromise {
        let this = jsObject
        return this[Strings.load].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func load() async throws -> FontFace {
        let this = jsObject
        let _promise: JSPromise = this[Strings.load].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var loaded: JSPromise

    @ReadonlyAttribute
    public var features: FontFaceFeatures

    @ReadonlyAttribute
    public var variations: FontFaceVariations

    @ReadonlyAttribute
    public var palettes: FontFacePalettes
}
