// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_MLResource: ConvertibleToJSValue {}
extension GPUTexture: Any_MLResource {}
extension MLBufferView: Any_MLResource {}
extension WebGLTexture: Any_MLResource {}

public enum MLResource: JSValueCompatible, Any_MLResource {
    case gPUTexture(GPUTexture)
    case mLBufferView(MLBufferView)
    case webGLTexture(WebGLTexture)

    public static func construct(from value: JSValue) -> Self? {
        if let gPUTexture: GPUTexture = value.fromJSValue() {
            return .gPUTexture(gPUTexture)
        }
        if let mLBufferView: MLBufferView = value.fromJSValue() {
            return .mLBufferView(mLBufferView)
        }
        if let webGLTexture: WebGLTexture = value.fromJSValue() {
            return .webGLTexture(webGLTexture)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .gPUTexture(gPUTexture):
            return gPUTexture.jsValue
        case let .mLBufferView(mLBufferView):
            return mLBufferView.jsValue
        case let .webGLTexture(webGLTexture):
            return webGLTexture.jsValue
        }
    }
}