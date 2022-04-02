// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentRequestUpdateEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.PaymentRequestUpdateEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: PaymentRequestUpdateEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), eventInitDict?.jsValue() ?? .undefined]))
    }

    public func updateWith(detailsPromise: JSPromise) {
        let this = jsObject
        _ = this[Strings.updateWith].function!(this: this, arguments: [detailsPromise.jsValue()])
    }
}
