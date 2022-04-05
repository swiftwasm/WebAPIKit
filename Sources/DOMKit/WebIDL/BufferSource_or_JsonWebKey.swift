// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_BufferSource_or_JsonWebKey: ConvertibleToJSValue {}
extension BufferSource: Any_BufferSource_or_JsonWebKey {}
extension JsonWebKey: Any_BufferSource_or_JsonWebKey {}

public enum BufferSource_or_JsonWebKey: JSValueCompatible, Any_BufferSource_or_JsonWebKey {
    case bufferSource(BufferSource)
    case jsonWebKey(JsonWebKey)

    public static func construct(from value: JSValue) -> Self? {
        if let bufferSource: BufferSource = value.fromJSValue() {
            return .bufferSource(bufferSource)
        }
        if let jsonWebKey: JsonWebKey = value.fromJSValue() {
            return .jsonWebKey(jsonWebKey)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .bufferSource(bufferSource):
            return bufferSource.jsValue
        case let .jsonWebKey(jsonWebKey):
            return jsonWebKey.jsValue
        }
    }
}