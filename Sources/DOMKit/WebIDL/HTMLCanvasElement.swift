// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLCanvasElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLCanvasElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _width = ReadWriteAttribute(jsObject: jsObject, name: Strings.width)
        _height = ReadWriteAttribute(jsObject: jsObject, name: Strings.height)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var width: UInt32

    @ReadWriteAttribute
    public var height: UInt32

    public func getContext(contextId: String, options: JSValue? = nil) -> RenderingContext? {
        let this = jsObject
        return this[Strings.getContext].function!(this: this, arguments: [contextId.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func toDataURL(type: String? = nil, quality: JSValue? = nil) -> String {
        let this = jsObject
        return this[Strings.toDataURL].function!(this: this, arguments: [type?.jsValue() ?? .undefined, quality?.jsValue() ?? .undefined]).fromJSValue()!
    }

    // XXX: member 'toBlob' is ignored

    public func transferControlToOffscreen() -> OffscreenCanvas {
        let this = jsObject
        return this[Strings.transferControlToOffscreen].function!(this: this, arguments: []).fromJSValue()!
    }

    public func captureStream(frameRequestRate: Double? = nil) -> MediaStream {
        let this = jsObject
        return this[Strings.captureStream].function!(this: this, arguments: [frameRequestRate?.jsValue() ?? .undefined]).fromJSValue()!
    }
}
