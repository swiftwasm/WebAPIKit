// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum CredentialMediationRequirement: JSString, JSValueCompatible {
    case silent = "silent"
    case optional = "optional"
    case conditional = "conditional"
    case required = "required"

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
