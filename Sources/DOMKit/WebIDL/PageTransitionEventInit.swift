// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PageTransitionEventInit: BridgedDictionary {
    public convenience init(persisted: Bool) {
        let object = JSObject.global.Object.function!.new()
        object[Strings.persisted] = persisted.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _persisted = ReadWriteAttribute(jsObject: object, name: Strings.persisted)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var persisted: Bool
}
