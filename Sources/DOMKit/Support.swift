import JavaScriptKit
import ECMAScript
import DOMKitFileAPI

/* TODO: fix this */
public typealias __UNSUPPORTED_BIGINT__ = JSValue

public typealias WindowProxy = Window

public extension HTMLElement {
    convenience init?(from element: Element) {
        self.init(from: .object(element.jsObject))
    }
}

public let globalThis = Window(from: JSObject.global.jsValue)!

public typealias Uint8ClampedArray = JSUInt8ClampedArray
// public typealias CSSColorValue_or_CSSStyleValue = CSSStyleValue
// public typealias Any_CSSColorValue_or_CSSStyleValue = CSSStyleValue
public typealias Blob_or_MediaSource = Blob
public typealias HTMLOrSVGImageElement = HTMLImageElement
public typealias HTMLOrSVGScriptElement = HTMLScriptElement
public typealias BodyInit = XMLHttpRequestBodyInit
public typealias CustomElementConstructor = JSFunction
