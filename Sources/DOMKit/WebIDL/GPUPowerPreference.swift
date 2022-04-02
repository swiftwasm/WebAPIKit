// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum GPUPowerPreference: JSString, JSValueCompatible {
    case lowPower = "low-power"
    case highPerformance = "high-performance"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public func jsValue() -> JSValue { rawValue.jsValue() }
}
