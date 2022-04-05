// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Blob_or_MediaSource: ConvertibleToJSValue {}
extension Blob: Any_Blob_or_MediaSource {}
extension MediaSource: Any_Blob_or_MediaSource {}

public enum Blob_or_MediaSource: JSValueCompatible, Any_Blob_or_MediaSource {
    case blob(Blob)
    case mediaSource(MediaSource)

    public static func construct(from value: JSValue) -> Self? {
        if let blob: Blob = value.fromJSValue() {
            return .blob(blob)
        }
        if let mediaSource: MediaSource = value.fromJSValue() {
            return .mediaSource(mediaSource)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .blob(blob):
            return blob.jsValue
        case let .mediaSource(mediaSource):
            return mediaSource.jsValue
        }
    }
}