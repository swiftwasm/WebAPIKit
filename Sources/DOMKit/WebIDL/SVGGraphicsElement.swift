// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGGraphicsElement: SVGElement, SVGTests {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGGraphicsElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _transform = ReadonlyAttribute(jsObject: jsObject, name: Strings.transform)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var transform: SVGAnimatedTransformList

    public func getBBox(options: SVGBoundingBoxOptions? = nil) -> DOMRect {
        let this = jsObject
        return this[Strings.getBBox].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func getCTM() -> DOMMatrix? {
        let this = jsObject
        return this[Strings.getCTM].function!(this: this, arguments: []).fromJSValue()!
    }

    public func getScreenCTM() -> DOMMatrix? {
        let this = jsObject
        return this[Strings.getScreenCTM].function!(this: this, arguments: []).fromJSValue()!
    }
}
