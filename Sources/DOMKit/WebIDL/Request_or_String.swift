// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Request_or_String: ConvertibleToJSValue {}
extension Request: Any_Request_or_String {}
extension String: Any_Request_or_String {}

public enum Request_or_String: JSValueCompatible, Any_Request_or_String {
    case request(Request)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let request: Request = value.fromJSValue() {
            return .request(request)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .request(request):
            return request.jsValue()
        case let .string(string):
            return string.jsValue()
        }
    }
}
