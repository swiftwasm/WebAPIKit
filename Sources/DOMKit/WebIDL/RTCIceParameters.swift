// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCIceParameters: BridgedDictionary {
    public convenience init(usernameFragment: String, password: String, iceLite: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.usernameFragment] = usernameFragment.jsValue()
        object[Strings.password] = password.jsValue()
        object[Strings.iceLite] = iceLite.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _usernameFragment = ReadWriteAttribute(jsObject: object, name: Strings.usernameFragment)
        _password = ReadWriteAttribute(jsObject: object, name: Strings.password)
        _iceLite = ReadWriteAttribute(jsObject: object, name: Strings.iceLite)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var usernameFragment: String

    @ReadWriteAttribute
    public var password: String

    @ReadWriteAttribute
    public var iceLite: Bool
}
