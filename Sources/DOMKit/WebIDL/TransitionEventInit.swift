// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TransitionEventInit: BridgedDictionary {
    public convenience init(propertyName: String, elapsedTime: Double, pseudoElement: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.propertyName] = propertyName.jsValue()
        object[Strings.elapsedTime] = elapsedTime.jsValue()
        object[Strings.pseudoElement] = pseudoElement.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _propertyName = ReadWriteAttribute(jsObject: object, name: Strings.propertyName)
        _elapsedTime = ReadWriteAttribute(jsObject: object, name: Strings.elapsedTime)
        _pseudoElement = ReadWriteAttribute(jsObject: object, name: Strings.pseudoElement)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var propertyName: String

    @ReadWriteAttribute
    public var elapsedTime: Double

    @ReadWriteAttribute
    public var pseudoElement: String
}
