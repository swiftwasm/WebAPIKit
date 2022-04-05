// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_CanvasImageSource: ConvertibleToJSValue {}
extension HTMLCanvasElement: Any_CanvasImageSource {}
extension HTMLOrSVGImageElement: Any_CanvasImageSource {}
extension HTMLVideoElement: Any_CanvasImageSource {}
extension ImageBitmap: Any_CanvasImageSource {}
extension OffscreenCanvas: Any_CanvasImageSource {}
extension VideoFrame: Any_CanvasImageSource {}

public enum CanvasImageSource: JSValueCompatible, Any_CanvasImageSource {
    case hTMLCanvasElement(HTMLCanvasElement)
    case hTMLOrSVGImageElement(HTMLOrSVGImageElement)
    case hTMLVideoElement(HTMLVideoElement)
    case imageBitmap(ImageBitmap)
    case offscreenCanvas(OffscreenCanvas)
    case videoFrame(VideoFrame)

    public static func construct(from value: JSValue) -> Self? {
        if let hTMLCanvasElement: HTMLCanvasElement = value.fromJSValue() {
            return .hTMLCanvasElement(hTMLCanvasElement)
        }
        if let hTMLOrSVGImageElement: HTMLOrSVGImageElement = value.fromJSValue() {
            return .hTMLOrSVGImageElement(hTMLOrSVGImageElement)
        }
        if let hTMLVideoElement: HTMLVideoElement = value.fromJSValue() {
            return .hTMLVideoElement(hTMLVideoElement)
        }
        if let imageBitmap: ImageBitmap = value.fromJSValue() {
            return .imageBitmap(imageBitmap)
        }
        if let offscreenCanvas: OffscreenCanvas = value.fromJSValue() {
            return .offscreenCanvas(offscreenCanvas)
        }
        if let videoFrame: VideoFrame = value.fromJSValue() {
            return .videoFrame(videoFrame)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .hTMLCanvasElement(hTMLCanvasElement):
            return hTMLCanvasElement.jsValue
        case let .hTMLOrSVGImageElement(hTMLOrSVGImageElement):
            return hTMLOrSVGImageElement.jsValue
        case let .hTMLVideoElement(hTMLVideoElement):
            return hTMLVideoElement.jsValue
        case let .imageBitmap(imageBitmap):
            return imageBitmap.jsValue
        case let .offscreenCanvas(offscreenCanvas):
            return offscreenCanvas.jsValue
        case let .videoFrame(videoFrame):
            return videoFrame.jsValue
        }
    }
}