// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol GeometryUtils: JSBridgedClass {}
public extension GeometryUtils {
    @inlinable func getBoxQuads(options: BoxQuadOptions? = nil) -> [DOMQuad] {
        let this = jsObject
        return this[Strings.getBoxQuads].function!(this: this, arguments: [options?.jsValue ?? .undefined]).fromJSValue()!
    }

    @inlinable func convertQuadFromNode(quad: DOMQuadInit, from: GeometryNode, options: ConvertCoordinateOptions? = nil) -> DOMQuad {
        let this = jsObject
        return this[Strings.convertQuadFromNode].function!(this: this, arguments: [quad.jsValue, from.jsValue, options?.jsValue ?? .undefined]).fromJSValue()!
    }

    @inlinable func convertRectFromNode(rect: DOMRectReadOnly, from: GeometryNode, options: ConvertCoordinateOptions? = nil) -> DOMQuad {
        let this = jsObject
        return this[Strings.convertRectFromNode].function!(this: this, arguments: [rect.jsValue, from.jsValue, options?.jsValue ?? .undefined]).fromJSValue()!
    }

    @inlinable func convertPointFromNode(point: DOMPointInit, from: GeometryNode, options: ConvertCoordinateOptions? = nil) -> DOMPoint {
        let this = jsObject
        return this[Strings.convertPointFromNode].function!(this: this, arguments: [point.jsValue, from.jsValue, options?.jsValue ?? .undefined]).fromJSValue()!
    }
}
