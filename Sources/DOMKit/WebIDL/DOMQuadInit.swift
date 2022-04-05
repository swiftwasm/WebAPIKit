// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMQuadInit: BridgedDictionary {
    public convenience init(p1: DOMPointInit, p2: DOMPointInit, p3: DOMPointInit, p4: DOMPointInit) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.p1] = p1.jsValue
        object[Strings.p2] = p2.jsValue
        object[Strings.p3] = p3.jsValue
        object[Strings.p4] = p4.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _p1 = ReadWriteAttribute(jsObject: object, name: Strings.p1)
        _p2 = ReadWriteAttribute(jsObject: object, name: Strings.p2)
        _p3 = ReadWriteAttribute(jsObject: object, name: Strings.p3)
        _p4 = ReadWriteAttribute(jsObject: object, name: Strings.p4)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var p1: DOMPointInit

    @ReadWriteAttribute
    public var p2: DOMPointInit

    @ReadWriteAttribute
    public var p3: DOMPointInit

    @ReadWriteAttribute
    public var p4: DOMPointInit
}
