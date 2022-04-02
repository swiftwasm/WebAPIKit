// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum MediaKeySessionClosedReason: JSString, JSValueCompatible {
    case internalError = "internal-error"
    case closedByApplication = "closed-by-application"
    case releaseAcknowledged = "release-acknowledged"
    case hardwareContextReset = "hardware-context-reset"
    case resourceEvicted = "resource-evicted"

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
