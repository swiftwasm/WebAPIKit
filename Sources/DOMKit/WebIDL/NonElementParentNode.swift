// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol NonElementParentNode: JSBridgedClass {}
public extension NonElementParentNode {
    func getElementById(elementId: String) -> Element? {
        jsObject["getElementById"]!(elementId.jsValue()).fromJSValue()!
    }
}
