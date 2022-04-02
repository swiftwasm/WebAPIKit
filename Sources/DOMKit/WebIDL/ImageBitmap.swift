// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ImageBitmap: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.ImageBitmap.function! }

    private enum Keys {
        static let close: JSString = "close"
        static let height: JSString = "height"
        static let width: JSString = "width"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _width = ReadonlyAttribute(jsObject: jsObject, name: Keys.width)
        _height = ReadonlyAttribute(jsObject: jsObject, name: Keys.height)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var width: UInt32

    @ReadonlyAttribute
    public var height: UInt32

    public func close() {
        _ = jsObject[Keys.close]!()
    }
}