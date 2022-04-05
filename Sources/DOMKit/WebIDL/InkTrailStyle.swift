// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class InkTrailStyle: BridgedDictionary {
    public convenience init(color: String, diameter: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.color] = color.jsValue
        object[Strings.diameter] = diameter.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _color = ReadWriteAttribute(jsObject: object, name: Strings.color)
        _diameter = ReadWriteAttribute(jsObject: object, name: Strings.diameter)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var color: String

    @ReadWriteAttribute
    public var diameter: Double
}
