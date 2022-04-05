// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_CanvasFilterInput_or_seq_of_CanvasFilterInput: ConvertibleToJSValue {}
extension CanvasFilterInput: Any_CanvasFilterInput_or_seq_of_CanvasFilterInput {}
extension Array: Any_CanvasFilterInput_or_seq_of_CanvasFilterInput where Element == CanvasFilterInput {}

public enum CanvasFilterInput_or_seq_of_CanvasFilterInput: JSValueCompatible, Any_CanvasFilterInput_or_seq_of_CanvasFilterInput {
    case canvasFilterInput(CanvasFilterInput)
    case seq_of_CanvasFilterInput([CanvasFilterInput])

    public static func construct(from value: JSValue) -> Self? {
        if let canvasFilterInput: CanvasFilterInput = value.fromJSValue() {
            return .canvasFilterInput(canvasFilterInput)
        }
        if let seq_of_CanvasFilterInput: [CanvasFilterInput] = value.fromJSValue() {
            return .seq_of_CanvasFilterInput(seq_of_CanvasFilterInput)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .canvasFilterInput(canvasFilterInput):
            return canvasFilterInput.jsValue
        case let .seq_of_CanvasFilterInput(seq_of_CanvasFilterInput):
            return seq_of_CanvasFilterInput.jsValue
        }
    }
}
