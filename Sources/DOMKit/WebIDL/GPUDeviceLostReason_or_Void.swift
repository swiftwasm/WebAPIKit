// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_GPUDeviceLostReason_or_Void: ConvertibleToJSValue {}
extension GPUDeviceLostReason: Any_GPUDeviceLostReason_or_Void {}
extension Void: Any_GPUDeviceLostReason_or_Void {}

public enum GPUDeviceLostReason_or_Void: JSValueCompatible, Any_GPUDeviceLostReason_or_Void {
    case gPUDeviceLostReason(GPUDeviceLostReason)
    case void(Void)

    public static func construct(from value: JSValue) -> Self? {
        if let gPUDeviceLostReason: GPUDeviceLostReason = value.fromJSValue() {
            return .gPUDeviceLostReason(gPUDeviceLostReason)
        }
        if let void: Void = value.fromJSValue() {
            return .void(void)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .gPUDeviceLostReason(gPUDeviceLostReason):
            return gPUDeviceLostReason.jsValue()
        case let .void(void):
            return void.jsValue()
        }
    }
}
