// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ConstrainULongRange: BridgedDictionary {
    public convenience init(exact: UInt32, ideal: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.exact] = exact.jsValue
        object[Strings.ideal] = ideal.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _exact = ReadWriteAttribute(jsObject: object, name: Strings.exact)
        _ideal = ReadWriteAttribute(jsObject: object, name: Strings.ideal)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var exact: UInt32

    @ReadWriteAttribute
    public var ideal: UInt32
}