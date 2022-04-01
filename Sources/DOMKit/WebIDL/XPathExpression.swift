// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XPathExpression: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.XPathExpression.function! }

    private enum Keys {
        static let evaluate: JSString = "evaluate"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func evaluate(contextNode: Node, type: UInt16? = nil, result: XPathResult? = nil) -> XPathResult {
        jsObject[Keys.evaluate]!(contextNode.jsValue(), type?.jsValue() ?? .undefined, result?.jsValue() ?? .undefined).fromJSValue()!
    }
}
