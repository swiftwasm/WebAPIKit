// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum VideoMatrixCoefficients: JSString, JSValueCompatible {
    case rgb = "rgb"
    case bt709 = "bt709"
    case bt470bg = "bt470bg"
    case smpte170m = "smpte170m"

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
