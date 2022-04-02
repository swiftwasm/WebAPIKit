// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PurchaseDetails: BridgedDictionary {
    public convenience init(itemId: String, purchaseToken: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.itemId] = itemId.jsValue()
        object[Strings.purchaseToken] = purchaseToken.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _itemId = ReadWriteAttribute(jsObject: object, name: Strings.itemId)
        _purchaseToken = ReadWriteAttribute(jsObject: object, name: Strings.purchaseToken)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var itemId: String

    @ReadWriteAttribute
    public var purchaseToken: String
}