// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IDBDatabase: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.IDBDatabase].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _version = ReadonlyAttribute(jsObject: jsObject, name: Strings.version)
        _objectStoreNames = ReadonlyAttribute(jsObject: jsObject, name: Strings.objectStoreNames)
        _onabort = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onabort)
        _onclose = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onclose)
        _onerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onerror)
        _onversionchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onversionchange)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var version: UInt64

    @ReadonlyAttribute
    public var objectStoreNames: DOMStringList

    public func transaction(storeNames: __UNSUPPORTED_UNION__, mode: IDBTransactionMode? = nil, options: IDBTransactionOptions? = nil) -> IDBTransaction {
        let this = jsObject
        return this[Strings.transaction].function!(this: this, arguments: [storeNames.jsValue(), mode?.jsValue() ?? .undefined, options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func close() {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [])
    }

    public func createObjectStore(name: String, options: IDBObjectStoreParameters? = nil) -> IDBObjectStore {
        let this = jsObject
        return this[Strings.createObjectStore].function!(this: this, arguments: [name.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func deleteObjectStore(name: String) {
        let this = jsObject
        _ = this[Strings.deleteObjectStore].function!(this: this, arguments: [name.jsValue()])
    }

    @ClosureAttribute1Optional
    public var onabort: EventHandler

    @ClosureAttribute1Optional
    public var onclose: EventHandler

    @ClosureAttribute1Optional
    public var onerror: EventHandler

    @ClosureAttribute1Optional
    public var onversionchange: EventHandler
}
