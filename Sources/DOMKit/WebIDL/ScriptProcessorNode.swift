// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ScriptProcessorNode: AudioNode {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.ScriptProcessorNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onaudioprocess = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onaudioprocess)
        _bufferSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.bufferSize)
        super.init(unsafelyWrapping: jsObject)
    }

    @ClosureAttribute1Optional
    public var onaudioprocess: EventHandler

    @ReadonlyAttribute
    public var bufferSize: Int32
}
