import JavaScriptKit
import ECMAScript

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
public typealias CustomElementConstructor = JSFunction
