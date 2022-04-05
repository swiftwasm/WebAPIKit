// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGTextContentElement: SVGGraphicsElement {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGTextContentElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _textLength = ReadonlyAttribute(jsObject: jsObject, name: Strings.textLength)
        _lengthAdjust = ReadonlyAttribute(jsObject: jsObject, name: Strings.lengthAdjust)
        super.init(unsafelyWrapping: jsObject)
    }

    public static let LENGTHADJUST_UNKNOWN: UInt16 = 0

    public static let LENGTHADJUST_SPACING: UInt16 = 1

    public static let LENGTHADJUST_SPACINGANDGLYPHS: UInt16 = 2

    @ReadonlyAttribute
    public var textLength: SVGAnimatedLength

    @ReadonlyAttribute
    public var lengthAdjust: SVGAnimatedEnumeration

    @inlinable public func getNumberOfChars() -> Int32 {
        let this = jsObject
        return this[Strings.getNumberOfChars].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getComputedTextLength() -> Float {
        let this = jsObject
        return this[Strings.getComputedTextLength].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getSubStringLength(charnum: UInt32, nchars: UInt32) -> Float {
        let this = jsObject
        return this[Strings.getSubStringLength].function!(this: this, arguments: [charnum.jsValue, nchars.jsValue]).fromJSValue()!
    }

    @inlinable public func getStartPositionOfChar(charnum: UInt32) -> DOMPoint {
        let this = jsObject
        return this[Strings.getStartPositionOfChar].function!(this: this, arguments: [charnum.jsValue]).fromJSValue()!
    }

    @inlinable public func getEndPositionOfChar(charnum: UInt32) -> DOMPoint {
        let this = jsObject
        return this[Strings.getEndPositionOfChar].function!(this: this, arguments: [charnum.jsValue]).fromJSValue()!
    }

    @inlinable public func getExtentOfChar(charnum: UInt32) -> DOMRect {
        let this = jsObject
        return this[Strings.getExtentOfChar].function!(this: this, arguments: [charnum.jsValue]).fromJSValue()!
    }

    @inlinable public func getRotationOfChar(charnum: UInt32) -> Float {
        let this = jsObject
        return this[Strings.getRotationOfChar].function!(this: this, arguments: [charnum.jsValue]).fromJSValue()!
    }

    @inlinable public func getCharNumAtPosition(point: DOMPointInit? = nil) -> Int32 {
        let this = jsObject
        return this[Strings.getCharNumAtPosition].function!(this: this, arguments: [point?.jsValue ?? .undefined]).fromJSValue()!
    }

    @inlinable public func selectSubString(charnum: UInt32, nchars: UInt32) {
        let this = jsObject
        _ = this[Strings.selectSubString].function!(this: this, arguments: [charnum.jsValue, nchars.jsValue])
    }
}
