// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Path2D: JSBridgedClass, CanvasPath {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.Path2D].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public convenience init(path: Path2D_or_String? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [path?.jsValue() ?? .undefined]))
    }

    @inlinable public func addPath(path: Path2D, transform: DOMMatrix2DInit? = nil) {
        let this = jsObject
        _ = this[Strings.addPath].function!(this: this, arguments: [path.jsValue(), transform?.jsValue() ?? .undefined])
    }
}
