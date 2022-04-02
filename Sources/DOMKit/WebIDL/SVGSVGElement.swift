// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGSVGElement: SVGGraphicsElement, SVGFitToViewBox, WindowEventHandlers {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGSVGElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadonlyAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadonlyAttribute(jsObject: jsObject, name: Strings.y)
        _width = ReadonlyAttribute(jsObject: jsObject, name: Strings.width)
        _height = ReadonlyAttribute(jsObject: jsObject, name: Strings.height)
        _currentScale = ReadWriteAttribute(jsObject: jsObject, name: Strings.currentScale)
        _currentTranslate = ReadonlyAttribute(jsObject: jsObject, name: Strings.currentTranslate)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var x: SVGAnimatedLength

    @ReadonlyAttribute
    public var y: SVGAnimatedLength

    @ReadonlyAttribute
    public var width: SVGAnimatedLength

    @ReadonlyAttribute
    public var height: SVGAnimatedLength

    @ReadWriteAttribute
    public var currentScale: Float

    @ReadonlyAttribute
    public var currentTranslate: DOMPointReadOnly

    @inlinable public func getIntersectionList(rect: DOMRectReadOnly, referenceElement: SVGElement?) -> NodeList {
        let this = jsObject
        return this[Strings.getIntersectionList].function!(this: this, arguments: [rect.jsValue(), referenceElement.jsValue()]).fromJSValue()!
    }

    @inlinable public func getEnclosureList(rect: DOMRectReadOnly, referenceElement: SVGElement?) -> NodeList {
        let this = jsObject
        return this[Strings.getEnclosureList].function!(this: this, arguments: [rect.jsValue(), referenceElement.jsValue()]).fromJSValue()!
    }

    @inlinable public func checkIntersection(element: SVGElement, rect: DOMRectReadOnly) -> Bool {
        let this = jsObject
        return this[Strings.checkIntersection].function!(this: this, arguments: [element.jsValue(), rect.jsValue()]).fromJSValue()!
    }

    @inlinable public func checkEnclosure(element: SVGElement, rect: DOMRectReadOnly) -> Bool {
        let this = jsObject
        return this[Strings.checkEnclosure].function!(this: this, arguments: [element.jsValue(), rect.jsValue()]).fromJSValue()!
    }

    @inlinable public func deselectAll() {
        let this = jsObject
        _ = this[Strings.deselectAll].function!(this: this, arguments: [])
    }

    @inlinable public func createSVGNumber() -> SVGNumber {
        let this = jsObject
        return this[Strings.createSVGNumber].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createSVGLength() -> SVGLength {
        let this = jsObject
        return this[Strings.createSVGLength].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createSVGAngle() -> SVGAngle {
        let this = jsObject
        return this[Strings.createSVGAngle].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createSVGPoint() -> DOMPoint {
        let this = jsObject
        return this[Strings.createSVGPoint].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createSVGMatrix() -> DOMMatrix {
        let this = jsObject
        return this[Strings.createSVGMatrix].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createSVGRect() -> DOMRect {
        let this = jsObject
        return this[Strings.createSVGRect].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createSVGTransform() -> SVGTransform {
        let this = jsObject
        return this[Strings.createSVGTransform].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createSVGTransformFromMatrix(matrix: DOMMatrix2DInit? = nil) -> SVGTransform {
        let this = jsObject
        return this[Strings.createSVGTransformFromMatrix].function!(this: this, arguments: [matrix?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func getElementById(elementId: String) -> Element {
        let this = jsObject
        return this[Strings.getElementById].function!(this: this, arguments: [elementId.jsValue()]).fromJSValue()!
    }

    @inlinable public func suspendRedraw(maxWaitMilliseconds: UInt32) -> UInt32 {
        let this = jsObject
        return this[Strings.suspendRedraw].function!(this: this, arguments: [maxWaitMilliseconds.jsValue()]).fromJSValue()!
    }

    @inlinable public func unsuspendRedraw(suspendHandleID: UInt32) {
        let this = jsObject
        _ = this[Strings.unsuspendRedraw].function!(this: this, arguments: [suspendHandleID.jsValue()])
    }

    @inlinable public func unsuspendRedrawAll() {
        let this = jsObject
        _ = this[Strings.unsuspendRedrawAll].function!(this: this, arguments: [])
    }

    @inlinable public func forceRedraw() {
        let this = jsObject
        _ = this[Strings.forceRedraw].function!(this: this, arguments: [])
    }

    @inlinable public func pauseAnimations() {
        let this = jsObject
        _ = this[Strings.pauseAnimations].function!(this: this, arguments: [])
    }

    @inlinable public func unpauseAnimations() {
        let this = jsObject
        _ = this[Strings.unpauseAnimations].function!(this: this, arguments: [])
    }

    @inlinable public func animationsPaused() -> Bool {
        let this = jsObject
        return this[Strings.animationsPaused].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getCurrentTime() -> Float {
        let this = jsObject
        return this[Strings.getCurrentTime].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func setCurrentTime(seconds: Float) {
        let this = jsObject
        _ = this[Strings.setCurrentTime].function!(this: this, arguments: [seconds.jsValue()])
    }
}
