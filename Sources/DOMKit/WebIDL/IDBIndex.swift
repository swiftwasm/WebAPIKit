// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IDBIndex: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.IDBIndex].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _objectStore = ReadonlyAttribute(jsObject: jsObject, name: Strings.objectStore)
        _keyPath = ReadonlyAttribute(jsObject: jsObject, name: Strings.keyPath)
        _multiEntry = ReadonlyAttribute(jsObject: jsObject, name: Strings.multiEntry)
        _unique = ReadonlyAttribute(jsObject: jsObject, name: Strings.unique)
        self.jsObject = jsObject
    }

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var objectStore: IDBObjectStore

    @ReadonlyAttribute
    public var keyPath: JSValue

    @ReadonlyAttribute
    public var multiEntry: Bool

    @ReadonlyAttribute
    public var unique: Bool

    public func get(query: JSValue) -> IDBRequest {
        let this = jsObject
        return this[Strings.get].function!(this: this, arguments: [query.jsValue()]).fromJSValue()!
    }

    public func getKey(query: JSValue) -> IDBRequest {
        let this = jsObject
        return this[Strings.getKey].function!(this: this, arguments: [query.jsValue()]).fromJSValue()!
    }

    public func getAll(query: JSValue? = nil, count: UInt32? = nil) -> IDBRequest {
        let this = jsObject
        return this[Strings.getAll].function!(this: this, arguments: [query?.jsValue() ?? .undefined, count?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func getAllKeys(query: JSValue? = nil, count: UInt32? = nil) -> IDBRequest {
        let this = jsObject
        return this[Strings.getAllKeys].function!(this: this, arguments: [query?.jsValue() ?? .undefined, count?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func count(query: JSValue? = nil) -> IDBRequest {
        let this = jsObject
        return this[Strings.count].function!(this: this, arguments: [query?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func openCursor(query: JSValue? = nil, direction: IDBCursorDirection? = nil) -> IDBRequest {
        let this = jsObject
        return this[Strings.openCursor].function!(this: this, arguments: [query?.jsValue() ?? .undefined, direction?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func openKeyCursor(query: JSValue? = nil, direction: IDBCursorDirection? = nil) -> IDBRequest {
        let this = jsObject
        return this[Strings.openKeyCursor].function!(this: this, arguments: [query?.jsValue() ?? .undefined, direction?.jsValue() ?? .undefined]).fromJSValue()!
    }
}
