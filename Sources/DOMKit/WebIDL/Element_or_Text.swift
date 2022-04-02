// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Element_or_Text: ConvertibleToJSValue {}
extension Element: Any_Element_or_Text {}
extension Text: Any_Element_or_Text {}

public enum Element_or_Text: JSValueCompatible, Any_Element_or_Text {
    case element(Element)
    case text(Text)

    public static func construct(from value: JSValue) -> Self? {
        if let element: Element = value.fromJSValue() {
            return .element(element)
        }
        if let text: Text = value.fromJSValue() {
            return .text(text)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .element(element):
            return element.jsValue()
        case let .text(text):
            return text.jsValue()
        }
    }
}
