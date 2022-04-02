// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AmbientLightReadingValues: BridgedDictionary {
    public convenience init(illuminance: Double?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.illuminance] = illuminance.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _illuminance = ReadWriteAttribute(jsObject: object, name: Strings.illuminance)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var illuminance: Double?
}
