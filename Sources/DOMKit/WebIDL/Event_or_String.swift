// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Event_or_String: ConvertibleToJSValue {}
extension Event: Any_Event_or_String {}
extension String: Any_Event_or_String {}

public enum Event_or_String: JSValueCompatible, Any_Event_or_String {
    case event(Event)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let event: Event = value.fromJSValue() {
            return .event(event)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .event(event):
            return event.jsValue()
        case let .string(string):
            return string.jsValue()
        }
    }
}
