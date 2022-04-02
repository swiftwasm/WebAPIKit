// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum RequestCache: JSString, JSValueCompatible {
    case `default` = "default"
    case noStore = "no-store"
    case reload = "reload"
    case noCache = "no-cache"
    case forceCache = "force-cache"
    case onlyIfCached = "only-if-cached"

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