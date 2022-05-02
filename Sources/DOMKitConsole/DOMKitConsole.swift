// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum console {
    @inlinable public static var jsObject: JSObject {
        JSObject.global[Strings.console].object!
    }

    @inlinable public static func assert(condition: Bool? = nil, data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.assert].function!(this: this, arguments: [condition?.jsValue ?? .undefined] + data.map(\.jsValue))
    }

    @inlinable public static func clear() {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.clear].function!(this: this, arguments: [])
    }

    @inlinable public static func debug(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.debug].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func error(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.error].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func info(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.info].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func log(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.log].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func table(tabularData: JSValue? = nil, properties: [String]? = nil) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.table].function!(this: this, arguments: [tabularData?.jsValue ?? .undefined, properties?.jsValue ?? .undefined])
    }

    @inlinable public static func trace(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.trace].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func warn(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.warn].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func dir(item: JSValue? = nil, options: JSObject? = nil) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.dir].function!(this: this, arguments: [item?.jsValue ?? .undefined, options?.jsValue ?? .undefined])
    }

    @inlinable public static func dirxml(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.dirxml].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func count(label: String? = nil) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.count].function!(this: this, arguments: [label?.jsValue ?? .undefined])
    }

    @inlinable public static func countReset(label: String? = nil) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.countReset].function!(this: this, arguments: [label?.jsValue ?? .undefined])
    }

    @inlinable public static func group(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.group].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func groupCollapsed(data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.groupCollapsed].function!(this: this, arguments: data.map(\.jsValue))
    }

    @inlinable public static func groupEnd() {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.groupEnd].function!(this: this, arguments: [])
    }

    @inlinable public static func time(label: String? = nil) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.time].function!(this: this, arguments: [label?.jsValue ?? .undefined])
    }

    @inlinable public static func timeLog(label: String? = nil, data: JSValue...) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.timeLog].function!(this: this, arguments: [label?.jsValue ?? .undefined] + data.map(\.jsValue))
    }

    @inlinable public static func timeEnd(label: String? = nil) {
        let this = JSObject.global[Strings.console].object!
        _ = this[Strings.timeEnd].function!(this: this, arguments: [label?.jsValue ?? .undefined])
    }
}

/* variadic generics please */

@usableFromInline enum Strings {
    static let _self: JSString = "self"
    @usableFromInline static let assert: JSString = "assert"
    @usableFromInline static let clear: JSString = "clear"
    @usableFromInline static let console: JSString = "console"
    @usableFromInline static let count: JSString = "count"
    @usableFromInline static let countReset: JSString = "countReset"
    @usableFromInline static let debug: JSString = "debug"
    @usableFromInline static let dir: JSString = "dir"
    @usableFromInline static let dirxml: JSString = "dirxml"
    @usableFromInline static let error: JSString = "error"
    @usableFromInline static let group: JSString = "group"
    @usableFromInline static let groupCollapsed: JSString = "groupCollapsed"
    @usableFromInline static let groupEnd: JSString = "groupEnd"
    @usableFromInline static let info: JSString = "info"
    @usableFromInline static let log: JSString = "log"
    @usableFromInline static let table: JSString = "table"
    @usableFromInline static let time: JSString = "time"
    @usableFromInline static let timeEnd: JSString = "timeEnd"
    @usableFromInline static let timeLog: JSString = "timeLog"
    @usableFromInline static let toString: JSString = "toString"
    @usableFromInline static let trace: JSString = "trace"
    @usableFromInline static let warn: JSString = "warn"
}
