// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum OrientationType: JSString, JSValueCompatible {
    case portraitPrimary = "portrait-primary"
    case portraitSecondary = "portrait-secondary"
    case landscapePrimary = "landscape-primary"
    case landscapeSecondary = "landscape-secondary"

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
