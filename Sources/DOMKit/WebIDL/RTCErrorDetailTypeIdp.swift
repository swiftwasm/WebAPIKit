// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum RTCErrorDetailTypeIdp: JSString, JSValueCompatible {
    case idpBadScriptFailure = "idp-bad-script-failure"
    case idpExecutionFailure = "idp-execution-failure"
    case idpLoadFailure = "idp-load-failure"
    case idpNeedLogin = "idp-need-login"
    case idpTimeout = "idp-timeout"
    case idpTlsFailure = "idp-tls-failure"
    case idpTokenExpired = "idp-token-expired"
    case idpTokenInvalid = "idp-token-invalid"

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
