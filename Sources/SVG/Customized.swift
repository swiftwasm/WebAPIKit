import ECMAScript
import JavaScriptKit
import DOM

// copied out of generated file to work around issue with `className` property being incompatible with superclass.
// NOTE: accessing ``SVGElement/className`` will crash your app.
public class SVGElement: Element, GlobalEventHandlers, DocumentAndElementEventHandlers, SVGElementInstance, HTMLOrSVGElement {
    @inlinable override public class var constructor: JSFunction? { JSObject.global[Strings.SVGElement].function }
    
    public required init(unsafelyWrapping jsObject: JSObject) {
        _svgClassName = ReadonlyAttribute(jsObject: jsObject, name: Strings.className)
        _ownerSVGElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.ownerSVGElement)
        _viewportElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.viewportElement)
        super.init(unsafelyWrapping: jsObject)
    }
    
    @ReadonlyAttribute
    public var svgClassName: SVGAnimatedString
    
    @ReadonlyAttribute
    public var ownerSVGElement: SVGSVGElement?
    
    @ReadonlyAttribute
    public var viewportElement: SVGElement?
}
