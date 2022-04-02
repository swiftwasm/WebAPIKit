// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MIDIConnectionEventInit: BridgedDictionary {
    public convenience init(port: MIDIPort) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.port] = port.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _port = ReadWriteAttribute(jsObject: object, name: Strings.port)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var port: MIDIPort
}
