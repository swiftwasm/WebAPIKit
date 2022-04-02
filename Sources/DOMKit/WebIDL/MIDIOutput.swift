// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MIDIOutput: MIDIPort {
    override public class var constructor: JSFunction { JSObject.global[Strings.MIDIOutput].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public func send(data: [UInt8], timestamp: DOMHighResTimeStamp? = nil) {
        _ = jsObject[Strings.send]!(data.jsValue(), timestamp?.jsValue() ?? .undefined)
    }

    public func clear() {
        _ = jsObject[Strings.clear]!()
    }
}