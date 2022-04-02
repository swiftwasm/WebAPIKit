// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SourceBufferList: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.SourceBufferList].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _onaddsourcebuffer = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onaddsourcebuffer)
        _onremovesourcebuffer = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onremovesourcebuffer)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var length: UInt32

    @ClosureAttribute1Optional
    public var onaddsourcebuffer: EventHandler

    @ClosureAttribute1Optional
    public var onremovesourcebuffer: EventHandler

    public subscript(key: Int) -> SourceBuffer {
        jsObject[key].fromJSValue()!
    }
}
