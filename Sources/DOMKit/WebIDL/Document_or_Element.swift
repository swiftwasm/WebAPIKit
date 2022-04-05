// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Document_or_Element: ConvertibleToJSValue {}
extension Document: Any_Document_or_Element {}
extension Element: Any_Document_or_Element {}

public enum Document_or_Element: JSValueCompatible, Any_Document_or_Element {
    case document(Document)
    case element(Element)

    public static func construct(from value: JSValue) -> Self? {
        if let document: Document = value.fromJSValue() {
            return .document(document)
        }
        if let element: Element = value.fromJSValue() {
            return .element(element)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .document(document):
            return document.jsValue
        case let .element(element):
            return element.jsValue
        }
    }
}
