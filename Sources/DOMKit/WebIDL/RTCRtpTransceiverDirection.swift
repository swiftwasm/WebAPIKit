// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum RTCRtpTransceiverDirection: JSString, JSValueCompatible {
    case sendrecv = "sendrecv"
    case sendonly = "sendonly"
    case recvonly = "recvonly"
    case inactive = "inactive"
    case stopped = "stopped"

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