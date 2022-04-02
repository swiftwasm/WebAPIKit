// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Node_or_String: ConvertibleToJSValue {}
extension Node: Any_Node_or_String {}
extension String: Any_Node_or_String {}

public enum Node_or_String: JSValueCompatible, Any_Node_or_String {
    case node(Node)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let node: Node = value.fromJSValue() {
            return .node(node)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .node(node):
            return node.jsValue()
        case let .string(string):
            return string.jsValue()
        }
    }
}
