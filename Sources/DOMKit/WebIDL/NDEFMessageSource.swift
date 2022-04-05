// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_NDEFMessageSource: ConvertibleToJSValue {}
extension BufferSource: Any_NDEFMessageSource {}
extension NDEFMessageInit: Any_NDEFMessageSource {}
extension String: Any_NDEFMessageSource {}

public enum NDEFMessageSource: JSValueCompatible, Any_NDEFMessageSource {
    case bufferSource(BufferSource)
    case nDEFMessageInit(NDEFMessageInit)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let bufferSource: BufferSource = value.fromJSValue() {
            return .bufferSource(bufferSource)
        }
        if let nDEFMessageInit: NDEFMessageInit = value.fromJSValue() {
            return .nDEFMessageInit(nDEFMessageInit)
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
        case let .nDEFMessageInit(nDEFMessageInit):
            return nDEFMessageInit.jsValue
        case let .string(string):
            return string.jsValue
        }
    }
}