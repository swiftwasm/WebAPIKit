// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EcdhKeyDeriveParams: BridgedDictionary {
    public convenience init(public _: CryptoKey) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.public] = public .jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _public = ReadWriteAttribute(jsObject: object, name: Strings.public)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var public: CryptoKey
}
