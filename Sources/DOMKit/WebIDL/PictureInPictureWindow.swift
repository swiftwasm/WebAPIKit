// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PictureInPictureWindow: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.PictureInPictureWindow].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _width = ReadonlyAttribute(jsObject: jsObject, name: Strings.width)
        _height = ReadonlyAttribute(jsObject: jsObject, name: Strings.height)
        _onresize = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onresize)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var width: Int32

    @ReadonlyAttribute
    public var height: Int32

    @ClosureAttribute.Optional1
    public var onresize: EventHandler
}
