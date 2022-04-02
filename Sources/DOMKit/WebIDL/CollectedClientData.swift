// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CollectedClientData: BridgedDictionary {
    public convenience init(type: String, challenge: String, origin: String, crossOrigin: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue()
        object[Strings.challenge] = challenge.jsValue()
        object[Strings.origin] = origin.jsValue()
        object[Strings.crossOrigin] = crossOrigin.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _challenge = ReadWriteAttribute(jsObject: object, name: Strings.challenge)
        _origin = ReadWriteAttribute(jsObject: object, name: Strings.origin)
        _crossOrigin = ReadWriteAttribute(jsObject: object, name: Strings.crossOrigin)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var challenge: String

    @ReadWriteAttribute
    public var origin: String

    @ReadWriteAttribute
    public var crossOrigin: Bool
}