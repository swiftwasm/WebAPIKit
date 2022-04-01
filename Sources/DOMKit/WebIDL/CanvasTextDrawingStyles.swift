// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let direction: JSString = "direction"
    static let font: JSString = "font"
    static let fontKerning: JSString = "fontKerning"
    static let fontStretch: JSString = "fontStretch"
    static let fontVariantCaps: JSString = "fontVariantCaps"
    static let letterSpacing: JSString = "letterSpacing"
    static let textAlign: JSString = "textAlign"
    static let textBaseline: JSString = "textBaseline"
    static let textRendering: JSString = "textRendering"
    static let wordSpacing: JSString = "wordSpacing"
}

public protocol CanvasTextDrawingStyles: JSBridgedClass {}
public extension CanvasTextDrawingStyles {
    var font: String {
        get { ReadWriteAttribute[Keys.font, in: jsObject] }
        set { ReadWriteAttribute[Keys.font, in: jsObject] = newValue }
    }

    var textAlign: CanvasTextAlign {
        get { ReadWriteAttribute[Keys.textAlign, in: jsObject] }
        set { ReadWriteAttribute[Keys.textAlign, in: jsObject] = newValue }
    }

    var textBaseline: CanvasTextBaseline {
        get { ReadWriteAttribute[Keys.textBaseline, in: jsObject] }
        set { ReadWriteAttribute[Keys.textBaseline, in: jsObject] = newValue }
    }

    var direction: CanvasDirection {
        get { ReadWriteAttribute[Keys.direction, in: jsObject] }
        set { ReadWriteAttribute[Keys.direction, in: jsObject] = newValue }
    }

    var letterSpacing: String {
        get { ReadWriteAttribute[Keys.letterSpacing, in: jsObject] }
        set { ReadWriteAttribute[Keys.letterSpacing, in: jsObject] = newValue }
    }

    var fontKerning: CanvasFontKerning {
        get { ReadWriteAttribute[Keys.fontKerning, in: jsObject] }
        set { ReadWriteAttribute[Keys.fontKerning, in: jsObject] = newValue }
    }

    var fontStretch: CanvasFontStretch {
        get { ReadWriteAttribute[Keys.fontStretch, in: jsObject] }
        set { ReadWriteAttribute[Keys.fontStretch, in: jsObject] = newValue }
    }

    var fontVariantCaps: CanvasFontVariantCaps {
        get { ReadWriteAttribute[Keys.fontVariantCaps, in: jsObject] }
        set { ReadWriteAttribute[Keys.fontVariantCaps, in: jsObject] = newValue }
    }

    var textRendering: CanvasTextRendering {
        get { ReadWriteAttribute[Keys.textRendering, in: jsObject] }
        set { ReadWriteAttribute[Keys.textRendering, in: jsObject] = newValue }
    }

    var wordSpacing: String {
        get { ReadWriteAttribute[Keys.wordSpacing, in: jsObject] }
        set { ReadWriteAttribute[Keys.wordSpacing, in: jsObject] = newValue }
    }
}
