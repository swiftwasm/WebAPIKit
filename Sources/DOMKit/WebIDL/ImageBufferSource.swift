// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_ImageBufferSource: ConvertibleToJSValue {}
extension BufferSource: Any_ImageBufferSource {}
extension ReadableStream: Any_ImageBufferSource {}

public enum ImageBufferSource: JSValueCompatible, Any_ImageBufferSource {
    case bufferSource(BufferSource)
    case readableStream(ReadableStream)

    public static func construct(from value: JSValue) -> Self? {
        if let bufferSource: BufferSource = value.fromJSValue() {
            return .bufferSource(bufferSource)
        }
        if let readableStream: ReadableStream = value.fromJSValue() {
            return .readableStream(readableStream)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .bufferSource(bufferSource):
            return bufferSource.jsValue
        case let .readableStream(readableStream):
            return readableStream.jsValue
        }
    }
}
