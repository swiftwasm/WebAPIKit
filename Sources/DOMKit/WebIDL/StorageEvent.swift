// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StorageEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.StorageEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _key = ReadonlyAttribute(jsObject: jsObject, name: Strings.key)
        _oldValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.oldValue)
        _newValue = ReadonlyAttribute(jsObject: jsObject, name: Strings.newValue)
        _url = ReadonlyAttribute(jsObject: jsObject, name: Strings.url)
        _storageArea = ReadonlyAttribute(jsObject: jsObject, name: Strings.storageArea)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: StorageEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), eventInitDict?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var key: String?

    @ReadonlyAttribute
    public var oldValue: String?

    @ReadonlyAttribute
    public var newValue: String?

    @ReadonlyAttribute
    public var url: String

    @ReadonlyAttribute
    public var storageArea: Storage?

    @inlinable public func initStorageEvent(type: String, bubbles: Bool? = nil, cancelable: Bool? = nil, key: String? = nil, oldValue: String? = nil, newValue: String? = nil, url: String? = nil, storageArea: Storage? = nil) {
        let _arg0 = type.jsValue()
        let _arg1 = bubbles?.jsValue() ?? .undefined
        let _arg2 = cancelable?.jsValue() ?? .undefined
        let _arg3 = key?.jsValue() ?? .undefined
        let _arg4 = oldValue?.jsValue() ?? .undefined
        let _arg5 = newValue?.jsValue() ?? .undefined
        let _arg6 = url?.jsValue() ?? .undefined
        let _arg7 = storageArea?.jsValue() ?? .undefined
        let this = jsObject
        _ = this[Strings.initStorageEvent].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7])
    }
}
