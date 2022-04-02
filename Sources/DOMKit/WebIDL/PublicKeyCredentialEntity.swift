// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PublicKeyCredentialEntity: BridgedDictionary {
    public convenience init(name: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.name] = name.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _name = ReadWriteAttribute(jsObject: object, name: Strings.name)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var name: String
}
