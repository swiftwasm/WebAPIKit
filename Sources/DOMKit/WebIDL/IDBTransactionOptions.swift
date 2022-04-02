// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IDBTransactionOptions: BridgedDictionary {
    public convenience init(durability: IDBTransactionDurability) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.durability] = durability.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _durability = ReadWriteAttribute(jsObject: object, name: Strings.durability)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var durability: IDBTransactionDurability
}
