// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EcKeyAlgorithm: BridgedDictionary {
    public convenience init(namedCurve: NamedCurve) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.namedCurve] = namedCurve.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _namedCurve = ReadWriteAttribute(jsObject: object, name: Strings.namedCurve)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var namedCurve: NamedCurve
}
