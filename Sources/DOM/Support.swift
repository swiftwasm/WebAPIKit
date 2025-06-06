@_exported import ECMAScript
import JavaScriptKit

/* TODO: fix this */
public typealias __UNSUPPORTED_BIGINT__ = JSValue

public typealias WindowProxy = Window

public let globalThis = Window(from: JSObject.global.jsValue)!

public typealias Uint8ClampedArray = JSUInt8ClampedArray
// public typealias CSSColorValue_or_CSSStyleValue = CSSStyleValue
// public typealias Any_CSSColorValue_or_CSSStyleValue = CSSStyleValue
public typealias Blob_or_MediaSource = Blob
public typealias BodyInit = XMLHttpRequestBodyInit
public typealias HTMLOrSVGImageElement = HTMLImageElement
public typealias HTMLOrSVGScriptElement = HTMLScriptElement
public typealias CustomElementConstructor = JSFunction
