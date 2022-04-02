// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EXT_disjoint_timer_query: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.EXT_disjoint_timer_query].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public static let QUERY_COUNTER_BITS_EXT: GLenum = 0x8864

    public static let CURRENT_QUERY_EXT: GLenum = 0x8865

    public static let QUERY_RESULT_EXT: GLenum = 0x8866

    public static let QUERY_RESULT_AVAILABLE_EXT: GLenum = 0x8867

    public static let TIME_ELAPSED_EXT: GLenum = 0x88BF

    public static let TIMESTAMP_EXT: GLenum = 0x8E28

    public static let GPU_DISJOINT_EXT: GLenum = 0x8FBB

    @inlinable public func createQueryEXT() -> WebGLTimerQueryEXT? {
        let this = jsObject
        return this[Strings.createQueryEXT].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func deleteQueryEXT(query: WebGLTimerQueryEXT?) {
        let this = jsObject
        _ = this[Strings.deleteQueryEXT].function!(this: this, arguments: [query.jsValue()])
    }

    @inlinable public func isQueryEXT(query: WebGLTimerQueryEXT?) -> Bool {
        let this = jsObject
        return this[Strings.isQueryEXT].function!(this: this, arguments: [query.jsValue()]).fromJSValue()!
    }

    @inlinable public func beginQueryEXT(target: GLenum, query: WebGLTimerQueryEXT) {
        let this = jsObject
        _ = this[Strings.beginQueryEXT].function!(this: this, arguments: [target.jsValue(), query.jsValue()])
    }

    @inlinable public func endQueryEXT(target: GLenum) {
        let this = jsObject
        _ = this[Strings.endQueryEXT].function!(this: this, arguments: [target.jsValue()])
    }

    @inlinable public func queryCounterEXT(query: WebGLTimerQueryEXT, target: GLenum) {
        let this = jsObject
        _ = this[Strings.queryCounterEXT].function!(this: this, arguments: [query.jsValue(), target.jsValue()])
    }

    @inlinable public func getQueryEXT(target: GLenum, pname: GLenum) -> JSValue {
        let this = jsObject
        return this[Strings.getQueryEXT].function!(this: this, arguments: [target.jsValue(), pname.jsValue()]).fromJSValue()!
    }

    @inlinable public func getQueryObjectEXT(query: WebGLTimerQueryEXT, pname: GLenum) -> JSValue {
        let this = jsObject
        return this[Strings.getQueryObjectEXT].function!(this: this, arguments: [query.jsValue(), pname.jsValue()]).fromJSValue()!
    }
}
