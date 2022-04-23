// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_RequestInfo: ConvertibleToJSValue {}
extension Request: Any_RequestInfo {}
extension String: Any_RequestInfo {}

public enum RequestInfo: JSValueCompatible, Any_RequestInfo {
    case request(Request)
    case string(String)

    var request: Request? {
        switch self {
        case let .request(request): return request
        default: return nil
        }
    }

    var string: String? {
        switch self {
        case let .string(string): return string
        default: return nil
        }
    }

    public static func construct(from value: JSValue) -> Self? {
        if let request: Request = value.fromJSValue() {
            return .request(request)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .request(request):
            return request.jsValue
        case let .string(string):
            return string.jsValue
        }
    }
}
