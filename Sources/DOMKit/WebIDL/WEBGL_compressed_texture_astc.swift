// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WEBGL_compressed_texture_astc: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.WEBGL_compressed_texture_astc].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public static let COMPRESSED_RGBA_ASTC_4x4_KHR: GLenum = 0x93B0

    public static let COMPRESSED_RGBA_ASTC_5x4_KHR: GLenum = 0x93B1

    public static let COMPRESSED_RGBA_ASTC_5x5_KHR: GLenum = 0x93B2

    public static let COMPRESSED_RGBA_ASTC_6x5_KHR: GLenum = 0x93B3

    public static let COMPRESSED_RGBA_ASTC_6x6_KHR: GLenum = 0x93B4

    public static let COMPRESSED_RGBA_ASTC_8x5_KHR: GLenum = 0x93B5

    public static let COMPRESSED_RGBA_ASTC_8x6_KHR: GLenum = 0x93B6

    public static let COMPRESSED_RGBA_ASTC_8x8_KHR: GLenum = 0x93B7

    public static let COMPRESSED_RGBA_ASTC_10x5_KHR: GLenum = 0x93B8

    public static let COMPRESSED_RGBA_ASTC_10x6_KHR: GLenum = 0x93B9

    public static let COMPRESSED_RGBA_ASTC_10x8_KHR: GLenum = 0x93BA

    public static let COMPRESSED_RGBA_ASTC_10x10_KHR: GLenum = 0x93BB

    public static let COMPRESSED_RGBA_ASTC_12x10_KHR: GLenum = 0x93BC

    public static let COMPRESSED_RGBA_ASTC_12x12_KHR: GLenum = 0x93BD

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR: GLenum = 0x93D0

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR: GLenum = 0x93D1

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR: GLenum = 0x93D2

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR: GLenum = 0x93D3

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR: GLenum = 0x93D4

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR: GLenum = 0x93D5

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR: GLenum = 0x93D6

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR: GLenum = 0x93D7

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR: GLenum = 0x93D8

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR: GLenum = 0x93D9

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR: GLenum = 0x93DA

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR: GLenum = 0x93DB

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR: GLenum = 0x93DC

    public static let COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR: GLenum = 0x93DD

    public func getSupportedProfiles() -> [String] {
        jsObject[Strings.getSupportedProfiles]!().fromJSValue()!
    }
}