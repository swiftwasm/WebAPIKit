// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FederatedCredentialRequestOptions: BridgedDictionary {
    public convenience init(providers: [String], protocols: [String]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.providers] = providers.jsValue()
        object[Strings.protocols] = protocols.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _providers = ReadWriteAttribute(jsObject: object, name: Strings.providers)
        _protocols = ReadWriteAttribute(jsObject: object, name: Strings.protocols)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var providers: [String]

    @ReadWriteAttribute
    public var protocols: [String]
}
