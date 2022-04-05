// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum XRLayerLayout: JSString, JSValueCompatible {
    case `default` = "default"
    case mono = "mono"
    case stereo = "stereo"
    case stereoLeftRight = "stereo-left-right"
    case stereoTopBottom = "stereo-top-bottom"

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
