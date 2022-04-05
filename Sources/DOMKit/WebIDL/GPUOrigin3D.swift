// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_GPUOrigin3D: ConvertibleToJSValue {}
extension GPUOrigin3DDict: Any_GPUOrigin3D {}
extension Array: Any_GPUOrigin3D where Element == GPUIntegerCoordinate {}

public enum GPUOrigin3D: JSValueCompatible, Any_GPUOrigin3D {
    case gPUOrigin3DDict(GPUOrigin3DDict)
    case seq_of_GPUIntegerCoordinate([GPUIntegerCoordinate])

    public static func construct(from value: JSValue) -> Self? {
        if let gPUOrigin3DDict: GPUOrigin3DDict = value.fromJSValue() {
            return .gPUOrigin3DDict(gPUOrigin3DDict)
        }
        if let seq_of_GPUIntegerCoordinate: [GPUIntegerCoordinate] = value.fromJSValue() {
            return .seq_of_GPUIntegerCoordinate(seq_of_GPUIntegerCoordinate)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .gPUOrigin3DDict(gPUOrigin3DDict):
            return gPUOrigin3DDict.jsValue
        case let .seq_of_GPUIntegerCoordinate(seq_of_GPUIntegerCoordinate):
            return seq_of_GPUIntegerCoordinate.jsValue
        }
    }
}