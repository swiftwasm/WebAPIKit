// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_PushMessageDataInit: ConvertibleToJSValue {}
extension BufferSource: Any_PushMessageDataInit {}
extension String: Any_PushMessageDataInit {}

public enum PushMessageDataInit: JSValueCompatible, Any_PushMessageDataInit {
    case bufferSource(BufferSource)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let bufferSource: BufferSource = value.fromJSValue() {
            return .bufferSource(bufferSource)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .bufferSource(bufferSource):
            return bufferSource.jsValue
        case let .string(string):
            return string.jsValue
        }
    }
}