// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLImageElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLImageElement.function! }

    private enum Keys {
        static let useMap: JSString = "useMap"
        static let decoding: JSString = "decoding"
        static let naturalHeight: JSString = "naturalHeight"
        static let sizes: JSString = "sizes"
        static let alt: JSString = "alt"
        static let lowsrc: JSString = "lowsrc"
        static let vspace: JSString = "vspace"
        static let currentSrc: JSString = "currentSrc"
        static let longDesc: JSString = "longDesc"
        static let referrerPolicy: JSString = "referrerPolicy"
        static let src: JSString = "src"
        static let hspace: JSString = "hspace"
        static let border: JSString = "border"
        static let decode: JSString = "decode"
        static let srcset: JSString = "srcset"
        static let width: JSString = "width"
        static let name: JSString = "name"
        static let complete: JSString = "complete"
        static let loading: JSString = "loading"
        static let height: JSString = "height"
        static let naturalWidth: JSString = "naturalWidth"
        static let crossOrigin: JSString = "crossOrigin"
        static let align: JSString = "align"
        static let isMap: JSString = "isMap"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _alt = ReadWriteAttribute(jsObject: jsObject, name: Keys.alt)
        _src = ReadWriteAttribute(jsObject: jsObject, name: Keys.src)
        _srcset = ReadWriteAttribute(jsObject: jsObject, name: Keys.srcset)
        _sizes = ReadWriteAttribute(jsObject: jsObject, name: Keys.sizes)
        _crossOrigin = ReadWriteAttribute(jsObject: jsObject, name: Keys.crossOrigin)
        _useMap = ReadWriteAttribute(jsObject: jsObject, name: Keys.useMap)
        _isMap = ReadWriteAttribute(jsObject: jsObject, name: Keys.isMap)
        _width = ReadWriteAttribute(jsObject: jsObject, name: Keys.width)
        _height = ReadWriteAttribute(jsObject: jsObject, name: Keys.height)
        _naturalWidth = ReadonlyAttribute(jsObject: jsObject, name: Keys.naturalWidth)
        _naturalHeight = ReadonlyAttribute(jsObject: jsObject, name: Keys.naturalHeight)
        _complete = ReadonlyAttribute(jsObject: jsObject, name: Keys.complete)
        _currentSrc = ReadonlyAttribute(jsObject: jsObject, name: Keys.currentSrc)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Keys.referrerPolicy)
        _decoding = ReadWriteAttribute(jsObject: jsObject, name: Keys.decoding)
        _loading = ReadWriteAttribute(jsObject: jsObject, name: Keys.loading)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _lowsrc = ReadWriteAttribute(jsObject: jsObject, name: Keys.lowsrc)
        _align = ReadWriteAttribute(jsObject: jsObject, name: Keys.align)
        _hspace = ReadWriteAttribute(jsObject: jsObject, name: Keys.hspace)
        _vspace = ReadWriteAttribute(jsObject: jsObject, name: Keys.vspace)
        _longDesc = ReadWriteAttribute(jsObject: jsObject, name: Keys.longDesc)
        _border = ReadWriteAttribute(jsObject: jsObject, name: Keys.border)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var alt: String

    @ReadWriteAttribute
    public var src: String

    @ReadWriteAttribute
    public var srcset: String

    @ReadWriteAttribute
    public var sizes: String

    @ReadWriteAttribute
    public var crossOrigin: String?

    @ReadWriteAttribute
    public var useMap: String

    @ReadWriteAttribute
    public var isMap: Bool

    @ReadWriteAttribute
    public var width: UInt32

    @ReadWriteAttribute
    public var height: UInt32

    @ReadonlyAttribute
    public var naturalWidth: UInt32

    @ReadonlyAttribute
    public var naturalHeight: UInt32

    @ReadonlyAttribute
    public var complete: Bool

    @ReadonlyAttribute
    public var currentSrc: String

    @ReadWriteAttribute
    public var referrerPolicy: String

    @ReadWriteAttribute
    public var decoding: String

    @ReadWriteAttribute
    public var loading: String

    public func decode() -> JSPromise {
        jsObject[Keys.decode]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func decode() async throws {
        let _promise: JSPromise = jsObject[Keys.decode]!().fromJSValue()!
        _ = try await _promise.get()
    }

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var lowsrc: String

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var hspace: UInt32

    @ReadWriteAttribute
    public var vspace: UInt32

    @ReadWriteAttribute
    public var longDesc: String

    @ReadWriteAttribute
    public var border: String
}
