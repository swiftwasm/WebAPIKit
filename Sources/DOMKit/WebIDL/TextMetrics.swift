// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextMetrics: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.TextMetrics.function! }

    private enum Keys {
        static let actualBoundingBoxAscent: JSString = "actualBoundingBoxAscent"
        static let actualBoundingBoxDescent: JSString = "actualBoundingBoxDescent"
        static let actualBoundingBoxLeft: JSString = "actualBoundingBoxLeft"
        static let actualBoundingBoxRight: JSString = "actualBoundingBoxRight"
        static let alphabeticBaseline: JSString = "alphabeticBaseline"
        static let emHeightAscent: JSString = "emHeightAscent"
        static let emHeightDescent: JSString = "emHeightDescent"
        static let fontBoundingBoxAscent: JSString = "fontBoundingBoxAscent"
        static let fontBoundingBoxDescent: JSString = "fontBoundingBoxDescent"
        static let hangingBaseline: JSString = "hangingBaseline"
        static let ideographicBaseline: JSString = "ideographicBaseline"
        static let width: JSString = "width"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _width = ReadonlyAttribute(jsObject: jsObject, name: Keys.width)
        _actualBoundingBoxLeft = ReadonlyAttribute(jsObject: jsObject, name: Keys.actualBoundingBoxLeft)
        _actualBoundingBoxRight = ReadonlyAttribute(jsObject: jsObject, name: Keys.actualBoundingBoxRight)
        _fontBoundingBoxAscent = ReadonlyAttribute(jsObject: jsObject, name: Keys.fontBoundingBoxAscent)
        _fontBoundingBoxDescent = ReadonlyAttribute(jsObject: jsObject, name: Keys.fontBoundingBoxDescent)
        _actualBoundingBoxAscent = ReadonlyAttribute(jsObject: jsObject, name: Keys.actualBoundingBoxAscent)
        _actualBoundingBoxDescent = ReadonlyAttribute(jsObject: jsObject, name: Keys.actualBoundingBoxDescent)
        _emHeightAscent = ReadonlyAttribute(jsObject: jsObject, name: Keys.emHeightAscent)
        _emHeightDescent = ReadonlyAttribute(jsObject: jsObject, name: Keys.emHeightDescent)
        _hangingBaseline = ReadonlyAttribute(jsObject: jsObject, name: Keys.hangingBaseline)
        _alphabeticBaseline = ReadonlyAttribute(jsObject: jsObject, name: Keys.alphabeticBaseline)
        _ideographicBaseline = ReadonlyAttribute(jsObject: jsObject, name: Keys.ideographicBaseline)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var width: Double

    @ReadonlyAttribute
    public var actualBoundingBoxLeft: Double

    @ReadonlyAttribute
    public var actualBoundingBoxRight: Double

    @ReadonlyAttribute
    public var fontBoundingBoxAscent: Double

    @ReadonlyAttribute
    public var fontBoundingBoxDescent: Double

    @ReadonlyAttribute
    public var actualBoundingBoxAscent: Double

    @ReadonlyAttribute
    public var actualBoundingBoxDescent: Double

    @ReadonlyAttribute
    public var emHeightAscent: Double

    @ReadonlyAttribute
    public var emHeightDescent: Double

    @ReadonlyAttribute
    public var hangingBaseline: Double

    @ReadonlyAttribute
    public var alphabeticBaseline: Double

    @ReadonlyAttribute
    public var ideographicBaseline: Double
}
