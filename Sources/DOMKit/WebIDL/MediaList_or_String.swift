// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_MediaList_or_String: ConvertibleToJSValue {}
extension MediaList: Any_MediaList_or_String {}
extension String: Any_MediaList_or_String {}

public enum MediaList_or_String: JSValueCompatible, Any_MediaList_or_String {
    case mediaList(MediaList)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let mediaList: MediaList = value.fromJSValue() {
            return .mediaList(mediaList)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .mediaList(mediaList):
            return mediaList.jsValue
        case let .string(string):
            return string.jsValue
        }
    }
}