// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MIDIInput: MIDIPort {
    override public class var constructor: JSFunction { JSObject.global[Strings.MIDIInput].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onmidimessage = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onmidimessage)
        super.init(unsafelyWrapping: jsObject)
    }

    @ClosureAttribute1Optional
    public var onmidimessage: EventHandler
}
