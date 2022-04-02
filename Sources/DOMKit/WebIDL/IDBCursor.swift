// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IDBCursor: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.IDBCursor].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _source = ReadonlyAttribute(jsObject: jsObject, name: Strings.source)
        _direction = ReadonlyAttribute(jsObject: jsObject, name: Strings.direction)
        _key = ReadonlyAttribute(jsObject: jsObject, name: Strings.key)
        _primaryKey = ReadonlyAttribute(jsObject: jsObject, name: Strings.primaryKey)
        _request = ReadonlyAttribute(jsObject: jsObject, name: Strings.request)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var source: __UNSUPPORTED_UNION__

    @ReadonlyAttribute
    public var direction: IDBCursorDirection

    @ReadonlyAttribute
    public var key: JSValue

    @ReadonlyAttribute
    public var primaryKey: JSValue

    @ReadonlyAttribute
    public var request: IDBRequest

    public func advance(count: UInt32) {
        let this = jsObject
        _ = this[Strings.advance].function!(this: this, arguments: [count.jsValue()])
    }

    public func `continue`(key: JSValue? = nil) {
        let this = jsObject
        _ = this[Strings.continue].function!(this: this, arguments: [key?.jsValue() ?? .undefined])
    }

    public func continuePrimaryKey(key: JSValue, primaryKey: JSValue) {
        let this = jsObject
        _ = this[Strings.continuePrimaryKey].function!(this: this, arguments: [key.jsValue(), primaryKey.jsValue()])
    }

    public func update(value: JSValue) -> IDBRequest {
        let this = jsObject
        return this[Strings.update].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    public func delete() -> IDBRequest {
        let this = jsObject
        return this[Strings.delete].function!(this: this, arguments: []).fromJSValue()!
    }
}
