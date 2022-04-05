// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Document_or_XMLHttpRequestBodyInit: ConvertibleToJSValue {}
extension Document: Any_Document_or_XMLHttpRequestBodyInit {}
extension XMLHttpRequestBodyInit: Any_Document_or_XMLHttpRequestBodyInit {}

public enum Document_or_XMLHttpRequestBodyInit: JSValueCompatible, Any_Document_or_XMLHttpRequestBodyInit {
    case document(Document)
    case xMLHttpRequestBodyInit(XMLHttpRequestBodyInit)

    public static func construct(from value: JSValue) -> Self? {
        if let document: Document = value.fromJSValue() {
            return .document(document)
        }
        if let xMLHttpRequestBodyInit: XMLHttpRequestBodyInit = value.fromJSValue() {
            return .xMLHttpRequestBodyInit(xMLHttpRequestBodyInit)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .document(document):
            return document.jsValue
        case let .xMLHttpRequestBodyInit(xMLHttpRequestBodyInit):
            return xMLHttpRequestBodyInit.jsValue
        }
    }
}