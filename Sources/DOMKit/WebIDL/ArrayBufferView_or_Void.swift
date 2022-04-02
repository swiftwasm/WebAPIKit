// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_ArrayBufferView_or_Void: ConvertibleToJSValue {}
extension ArrayBufferView: Any_ArrayBufferView_or_Void {}
extension Void: Any_ArrayBufferView_or_Void {}

public enum ArrayBufferView_or_Void: JSValueCompatible, Any_ArrayBufferView_or_Void {
    case arrayBufferView(ArrayBufferView)
    case void(Void)

    public static func construct(from value: JSValue) -> Self? {
        if let arrayBufferView: ArrayBufferView = value.fromJSValue() {
            return .arrayBufferView(arrayBufferView)
        }
        if let void: Void = value.fromJSValue() {
            return .void(void)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .arrayBufferView(arrayBufferView):
            return arrayBufferView.jsValue()
        case let .void(void):
            return void.jsValue()
        }
    }
}
