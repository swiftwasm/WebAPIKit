// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum RTCStatsIceCandidatePairState: JSString, JSValueCompatible {
    case frozen = "frozen"
    case waiting = "waiting"
    case inProgress = "in-progress"
    case failed = "failed"
    case succeeded = "succeeded"

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
