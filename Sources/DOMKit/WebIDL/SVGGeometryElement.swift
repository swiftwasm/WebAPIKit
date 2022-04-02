// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGGeometryElement: SVGGraphicsElement {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGGeometryElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _pathLength = ReadonlyAttribute(jsObject: jsObject, name: Strings.pathLength)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var pathLength: SVGAnimatedNumber

    @inlinable public func isPointInFill(point: DOMPointInit? = nil) -> Bool {
        let this = jsObject
        return this[Strings.isPointInFill].function!(this: this, arguments: [point?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func isPointInStroke(point: DOMPointInit? = nil) -> Bool {
        let this = jsObject
        return this[Strings.isPointInStroke].function!(this: this, arguments: [point?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func getTotalLength() -> Float {
        let this = jsObject
        return this[Strings.getTotalLength].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getPointAtLength(distance: Float) -> DOMPoint {
        let this = jsObject
        return this[Strings.getPointAtLength].function!(this: this, arguments: [distance.jsValue()]).fromJSValue()!
    }
}
