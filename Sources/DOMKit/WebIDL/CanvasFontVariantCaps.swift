// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CanvasFontVariantCaps: JSString, JSValueCompatible {
    case normal = "normal"
    case smallCaps = "small-caps"
    case allSmallCaps = "all-small-caps"
    case petiteCaps = "petite-caps"
    case allPetiteCaps = "all-petite-caps"
    case unicase = "unicase"
    case titlingCaps = "titling-caps"

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
