// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum GPUBlendFactor: JSString, JSValueCompatible {
    case zero = "zero"
    case one = "one"
    case src = "src"
    case oneMinusSrc = "one-minus-src"
    case srcAlpha = "src-alpha"
    case oneMinusSrcAlpha = "one-minus-src-alpha"
    case dst = "dst"
    case oneMinusDst = "one-minus-dst"
    case dstAlpha = "dst-alpha"
    case oneMinusDstAlpha = "one-minus-dst-alpha"
    case srcAlphaSaturated = "src-alpha-saturated"
    case constant = "constant"
    case oneMinusConstant = "one-minus-constant"

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}