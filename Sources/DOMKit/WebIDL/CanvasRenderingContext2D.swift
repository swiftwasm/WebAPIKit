// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CanvasRenderingContext2D: JSBridgedClass, CanvasState, CanvasTransform, CanvasCompositing, CanvasImageSmoothing, CanvasFillStrokeStyles, CanvasShadowStyles, CanvasFilters, CanvasRect, CanvasDrawPath, CanvasUserInterface, CanvasText, CanvasDrawImage, CanvasImageData, CanvasPathDrawingStyles, CanvasTextDrawingStyles, CanvasPath {
    public class var constructor: JSFunction { JSObject.global.CanvasRenderingContext2D.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _canvas = ReadonlyAttribute(jsObject: jsObject, name: "canvas")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var canvas: HTMLCanvasElement

    public func getContextAttributes() -> CanvasRenderingContext2DSettings {
        jsObject["getContextAttributes"]!().fromJSValue()!
    }
}
