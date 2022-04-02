// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum LandmarkType: JSString, JSValueCompatible {
    case mouth = "mouth"
    case eye = "eye"
    case nose = "nose"

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
