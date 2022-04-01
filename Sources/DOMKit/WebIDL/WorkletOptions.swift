// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WorkletOptions: BridgedDictionary {
    private enum Keys {
        static let credentials: JSString = "credentials"
    }

    public convenience init(credentials: RequestCredentials) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.credentials] = credentials.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _credentials = ReadWriteAttribute(jsObject: object, name: Keys.credentials)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var credentials: RequestCredentials
}
