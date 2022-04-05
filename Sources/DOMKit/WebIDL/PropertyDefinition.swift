// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PropertyDefinition: BridgedDictionary {
    public convenience init(name: String, syntax: String, inherits: Bool, initialValue: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.name] = name.jsValue
        object[Strings.syntax] = syntax.jsValue
        object[Strings.inherits] = inherits.jsValue
        object[Strings.initialValue] = initialValue.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _name = ReadWriteAttribute(jsObject: object, name: Strings.name)
        _syntax = ReadWriteAttribute(jsObject: object, name: Strings.syntax)
        _inherits = ReadWriteAttribute(jsObject: object, name: Strings.inherits)
        _initialValue = ReadWriteAttribute(jsObject: object, name: Strings.initialValue)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var syntax: String

    @ReadWriteAttribute
    public var inherits: Bool

    @ReadWriteAttribute
    public var initialValue: String
}
