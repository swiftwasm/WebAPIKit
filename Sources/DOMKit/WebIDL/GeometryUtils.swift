// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol GeometryUtils: JSBridgedClass {}
public extension GeometryUtils {
    func getBoxQuads(options: BoxQuadOptions? = nil) -> [DOMQuad] {
        jsObject[Strings.getBoxQuads]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    func convertQuadFromNode(quad: DOMQuadInit, from: GeometryNode, options: ConvertCoordinateOptions? = nil) -> DOMQuad {
        jsObject[Strings.convertQuadFromNode]!(quad.jsValue(), from.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    func convertRectFromNode(rect: DOMRectReadOnly, from: GeometryNode, options: ConvertCoordinateOptions? = nil) -> DOMQuad {
        jsObject[Strings.convertRectFromNode]!(rect.jsValue(), from.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    func convertPointFromNode(point: DOMPointInit, from: GeometryNode, options: ConvertCoordinateOptions? = nil) -> DOMPoint {
        jsObject[Strings.convertPointFromNode]!(point.jsValue(), from.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }
}
