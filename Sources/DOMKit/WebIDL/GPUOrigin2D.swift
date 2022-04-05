// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_GPUOrigin2D: ConvertibleToJSValue {}
extension GPUOrigin2DDict: Any_GPUOrigin2D {}
extension Array: Any_GPUOrigin2D where Element == GPUIntegerCoordinate {}

public enum GPUOrigin2D: JSValueCompatible, Any_GPUOrigin2D {
    case gPUOrigin2DDict(GPUOrigin2DDict)
    case seq_of_GPUIntegerCoordinate([GPUIntegerCoordinate])

    public static func construct(from value: JSValue) -> Self? {
        if let gPUOrigin2DDict: GPUOrigin2DDict = value.fromJSValue() {
            return .gPUOrigin2DDict(gPUOrigin2DDict)
        }
        if let seq_of_GPUIntegerCoordinate: [GPUIntegerCoordinate] = value.fromJSValue() {
            return .seq_of_GPUIntegerCoordinate(seq_of_GPUIntegerCoordinate)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .gPUOrigin2DDict(gPUOrigin2DDict):
            return gPUOrigin2DDict.jsValue
        case let .seq_of_GPUIntegerCoordinate(seq_of_GPUIntegerCoordinate):
            return seq_of_GPUIntegerCoordinate.jsValue
        }
    }
}