// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_RequestInfo_or_seq_of_RequestInfo: ConvertibleToJSValue {}
extension RequestInfo: Any_RequestInfo_or_seq_of_RequestInfo {}
extension Array: Any_RequestInfo_or_seq_of_RequestInfo where Element == RequestInfo {}

public enum RequestInfo_or_seq_of_RequestInfo: JSValueCompatible, Any_RequestInfo_or_seq_of_RequestInfo {
    case requestInfo(RequestInfo)
    case seq_of_RequestInfo([RequestInfo])

    public static func construct(from value: JSValue) -> Self? {
        if let requestInfo: RequestInfo = value.fromJSValue() {
            return .requestInfo(requestInfo)
        }
        if let seq_of_RequestInfo: [RequestInfo] = value.fromJSValue() {
            return .seq_of_RequestInfo(seq_of_RequestInfo)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .requestInfo(requestInfo):
            return requestInfo.jsValue()
        case let .seq_of_RequestInfo(seq_of_RequestInfo):
            return seq_of_RequestInfo.jsValue()
        }
    }
}
