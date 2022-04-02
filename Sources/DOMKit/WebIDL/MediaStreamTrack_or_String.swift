// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_MediaStreamTrack_or_String: ConvertibleToJSValue {}
extension MediaStreamTrack: Any_MediaStreamTrack_or_String {}
extension String: Any_MediaStreamTrack_or_String {}

public enum MediaStreamTrack_or_String: JSValueCompatible, Any_MediaStreamTrack_or_String {
    case mediaStreamTrack(MediaStreamTrack)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let mediaStreamTrack: MediaStreamTrack = value.fromJSValue() {
            return .mediaStreamTrack(mediaStreamTrack)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .mediaStreamTrack(mediaStreamTrack):
            return mediaStreamTrack.jsValue()
        case let .string(string):
            return string.jsValue()
        }
    }
}
