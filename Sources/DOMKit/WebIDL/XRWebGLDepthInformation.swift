// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRWebGLDepthInformation: XRDepthInformation {
    override public class var constructor: JSFunction { JSObject.global[Strings.XRWebGLDepthInformation].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _texture = ReadonlyAttribute(jsObject: jsObject, name: Strings.texture)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var texture: WebGLTexture
}
