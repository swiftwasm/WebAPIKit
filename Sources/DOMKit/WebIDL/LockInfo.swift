// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class LockInfo: BridgedDictionary {
    public convenience init(name: String, mode: LockMode, clientId: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.name] = name.jsValue()
        object[Strings.mode] = mode.jsValue()
        object[Strings.clientId] = clientId.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _name = ReadWriteAttribute(jsObject: object, name: Strings.name)
        _mode = ReadWriteAttribute(jsObject: object, name: Strings.mode)
        _clientId = ReadWriteAttribute(jsObject: object, name: Strings.clientId)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var mode: LockMode

    @ReadWriteAttribute
    public var clientId: String
}