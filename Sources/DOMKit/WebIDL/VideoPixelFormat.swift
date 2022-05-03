// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum VideoPixelFormat: JSString, JSValueCompatible {
    case i420 = "I420"
    case i420A = "I420A"
    case i422 = "I422"
    case i444 = "I444"
    case nV12 = "NV12"
    case rGBA = "RGBA"
    case rGBX = "RGBX"
    case bGRA = "BGRA"
    case bGRX = "BGRX"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public var jsValue: JSValue { rawValue.jsValue }
}