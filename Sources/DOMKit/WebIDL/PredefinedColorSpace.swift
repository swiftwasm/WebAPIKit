// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum PredefinedColorSpace: String, JSValueCompatible {
    case srgb
    case displayP3 = "display-p3"

    public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    public init?(rawValue: String) {
        self.init(rawValue: JSString(rawValue))
    }

    public func jsValue() -> JSValue { rawValue.jsValue() }
}
