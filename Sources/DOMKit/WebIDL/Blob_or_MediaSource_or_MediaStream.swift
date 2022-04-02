// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Blob_or_MediaSource_or_MediaStream: ConvertibleToJSValue {}
extension Blob: Any_Blob_or_MediaSource_or_MediaStream {}
extension MediaSource: Any_Blob_or_MediaSource_or_MediaStream {}
extension MediaStream: Any_Blob_or_MediaSource_or_MediaStream {}

public enum Blob_or_MediaSource_or_MediaStream: JSValueCompatible, Any_Blob_or_MediaSource_or_MediaStream {
    case blob(Blob)
    case mediaSource(MediaSource)
    case mediaStream(MediaStream)

    public static func construct(from value: JSValue) -> Self? {
        if let blob: Blob = value.fromJSValue() {
            return .blob(blob)
        }
        if let mediaSource: MediaSource = value.fromJSValue() {
            return .mediaSource(mediaSource)
        }
        if let mediaStream: MediaStream = value.fromJSValue() {
            return .mediaStream(mediaStream)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .blob(blob):
            return blob.jsValue()
        case let .mediaSource(mediaSource):
            return mediaSource.jsValue()
        case let .mediaStream(mediaStream):
            return mediaStream.jsValue()
        }
    }
}
