// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IDBTransaction: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.IDBTransaction].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _objectStoreNames = ReadonlyAttribute(jsObject: jsObject, name: Strings.objectStoreNames)
        _mode = ReadonlyAttribute(jsObject: jsObject, name: Strings.mode)
        _durability = ReadonlyAttribute(jsObject: jsObject, name: Strings.durability)
        _db = ReadonlyAttribute(jsObject: jsObject, name: Strings.db)
        _error = ReadonlyAttribute(jsObject: jsObject, name: Strings.error)
        _onabort = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onabort)
        _oncomplete = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.oncomplete)
        _onerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onerror)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var objectStoreNames: DOMStringList

    @ReadonlyAttribute
    public var mode: IDBTransactionMode

    @ReadonlyAttribute
    public var durability: IDBTransactionDurability

    @ReadonlyAttribute
    public var db: IDBDatabase

    @ReadonlyAttribute
    public var error: DOMException?

    public func objectStore(name: String) -> IDBObjectStore {
        jsObject[Strings.objectStore]!(name.jsValue()).fromJSValue()!
    }

    public func commit() {
        _ = jsObject[Strings.commit]!()
    }

    public func abort() {
        _ = jsObject[Strings.abort]!()
    }

    @ClosureAttribute1Optional
    public var onabort: EventHandler

    @ClosureAttribute1Optional
    public var oncomplete: EventHandler

    @ClosureAttribute1Optional
    public var onerror: EventHandler
}
