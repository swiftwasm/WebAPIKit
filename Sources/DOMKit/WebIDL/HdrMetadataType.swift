// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum HdrMetadataType: JSString, JSValueCompatible {
    case smpteSt2086 = "smpteSt2086"
    case smpteSt209410 = "smpteSt2094-10"
    case smpteSt209440 = "smpteSt2094-40"

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
