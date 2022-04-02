// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum RTCErrorDetailType: JSString, JSValueCompatible {
    case dataChannelFailure = "data-channel-failure"
    case dtlsFailure = "dtls-failure"
    case fingerprintFailure = "fingerprint-failure"
    case sctpFailure = "sctp-failure"
    case sdpSyntaxError = "sdp-syntax-error"
    case hardwareEncoderNotAvailable = "hardware-encoder-not-available"
    case hardwareEncoderError = "hardware-encoder-error"

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
