// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum AudioSampleFormat: JSString, JSValueCompatible {
    case u8 = "u8"
    case s16 = "s16"
    case s32 = "s32"
    case f32 = "f32"
    case u8Planar = "u8-planar"
    case s16Planar = "s16-planar"
    case s32Planar = "s32-planar"
    case f32Planar = "f32-planar"

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
