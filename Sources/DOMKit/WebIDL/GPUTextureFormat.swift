// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum GPUTextureFormat: JSString, JSValueCompatible {
    case r8unorm = "r8unorm"
    case r8snorm = "r8snorm"
    case r8uint = "r8uint"
    case r8sint = "r8sint"
    case r16uint = "r16uint"
    case r16sint = "r16sint"
    case r16float = "r16float"
    case rg8unorm = "rg8unorm"
    case rg8snorm = "rg8snorm"
    case rg8uint = "rg8uint"
    case rg8sint = "rg8sint"
    case r32uint = "r32uint"
    case r32sint = "r32sint"
    case r32float = "r32float"
    case rg16uint = "rg16uint"
    case rg16sint = "rg16sint"
    case rg16float = "rg16float"
    case rgba8unorm = "rgba8unorm"
    case rgba8unormSrgb = "rgba8unorm-srgb"
    case rgba8snorm = "rgba8snorm"
    case rgba8uint = "rgba8uint"
    case rgba8sint = "rgba8sint"
    case bgra8unorm = "bgra8unorm"
    case bgra8unormSrgb = "bgra8unorm-srgb"
    case rgb9e5ufloat = "rgb9e5ufloat"
    case rgb10a2unorm = "rgb10a2unorm"
    case rg11b10ufloat = "rg11b10ufloat"
    case rg32uint = "rg32uint"
    case rg32sint = "rg32sint"
    case rg32float = "rg32float"
    case rgba16uint = "rgba16uint"
    case rgba16sint = "rgba16sint"
    case rgba16float = "rgba16float"
    case rgba32uint = "rgba32uint"
    case rgba32sint = "rgba32sint"
    case rgba32float = "rgba32float"
    case stencil8 = "stencil8"
    case depth16unorm = "depth16unorm"
    case depth24plus = "depth24plus"
    case depth24plusStencil8 = "depth24plus-stencil8"
    case depth32float = "depth32float"
    case depth24unormStencil8 = "depth24unorm-stencil8"
    case depth32floatStencil8 = "depth32float-stencil8"
    case bc1RgbaUnorm = "bc1-rgba-unorm"
    case bc1RgbaUnormSrgb = "bc1-rgba-unorm-srgb"
    case bc2RgbaUnorm = "bc2-rgba-unorm"
    case bc2RgbaUnormSrgb = "bc2-rgba-unorm-srgb"
    case bc3RgbaUnorm = "bc3-rgba-unorm"
    case bc3RgbaUnormSrgb = "bc3-rgba-unorm-srgb"
    case bc4RUnorm = "bc4-r-unorm"
    case bc4RSnorm = "bc4-r-snorm"
    case bc5RgUnorm = "bc5-rg-unorm"
    case bc5RgSnorm = "bc5-rg-snorm"
    case bc6hRgbUfloat = "bc6h-rgb-ufloat"
    case bc6hRgbFloat = "bc6h-rgb-float"
    case bc7RgbaUnorm = "bc7-rgba-unorm"
    case bc7RgbaUnormSrgb = "bc7-rgba-unorm-srgb"
    case etc2Rgb8unorm = "etc2-rgb8unorm"
    case etc2Rgb8unormSrgb = "etc2-rgb8unorm-srgb"
    case etc2Rgb8a1unorm = "etc2-rgb8a1unorm"
    case etc2Rgb8a1unormSrgb = "etc2-rgb8a1unorm-srgb"
    case etc2Rgba8unorm = "etc2-rgba8unorm"
    case etc2Rgba8unormSrgb = "etc2-rgba8unorm-srgb"
    case eacR11unorm = "eac-r11unorm"
    case eacR11snorm = "eac-r11snorm"
    case eacRg11unorm = "eac-rg11unorm"
    case eacRg11snorm = "eac-rg11snorm"
    case astc4x4Unorm = "astc-4x4-unorm"
    case astc4x4UnormSrgb = "astc-4x4-unorm-srgb"
    case astc5x4Unorm = "astc-5x4-unorm"
    case astc5x4UnormSrgb = "astc-5x4-unorm-srgb"
    case astc5x5Unorm = "astc-5x5-unorm"
    case astc5x5UnormSrgb = "astc-5x5-unorm-srgb"
    case astc6x5Unorm = "astc-6x5-unorm"
    case astc6x5UnormSrgb = "astc-6x5-unorm-srgb"
    case astc6x6Unorm = "astc-6x6-unorm"
    case astc6x6UnormSrgb = "astc-6x6-unorm-srgb"
    case astc8x5Unorm = "astc-8x5-unorm"
    case astc8x5UnormSrgb = "astc-8x5-unorm-srgb"
    case astc8x6Unorm = "astc-8x6-unorm"
    case astc8x6UnormSrgb = "astc-8x6-unorm-srgb"
    case astc8x8Unorm = "astc-8x8-unorm"
    case astc8x8UnormSrgb = "astc-8x8-unorm-srgb"
    case astc10x5Unorm = "astc-10x5-unorm"
    case astc10x5UnormSrgb = "astc-10x5-unorm-srgb"
    case astc10x6Unorm = "astc-10x6-unorm"
    case astc10x6UnormSrgb = "astc-10x6-unorm-srgb"
    case astc10x8Unorm = "astc-10x8-unorm"
    case astc10x8UnormSrgb = "astc-10x8-unorm-srgb"
    case astc10x10Unorm = "astc-10x10-unorm"
    case astc10x10UnormSrgb = "astc-10x10-unorm-srgb"
    case astc12x10Unorm = "astc-12x10-unorm"
    case astc12x10UnormSrgb = "astc-12x10-unorm-srgb"
    case astc12x12Unorm = "astc-12x12-unorm"
    case astc12x12UnormSrgb = "astc-12x12-unorm-srgb"

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
