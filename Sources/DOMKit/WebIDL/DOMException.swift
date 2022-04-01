// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMException: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DOMException.function! }

    private enum Keys {
        static let ABORT_ERR: JSString = "ABORT_ERR"
        static let DATA_CLONE_ERR: JSString = "DATA_CLONE_ERR"
        static let DOMSTRING_SIZE_ERR: JSString = "DOMSTRING_SIZE_ERR"
        static let HIERARCHY_REQUEST_ERR: JSString = "HIERARCHY_REQUEST_ERR"
        static let INDEX_SIZE_ERR: JSString = "INDEX_SIZE_ERR"
        static let INUSE_ATTRIBUTE_ERR: JSString = "INUSE_ATTRIBUTE_ERR"
        static let INVALID_ACCESS_ERR: JSString = "INVALID_ACCESS_ERR"
        static let INVALID_CHARACTER_ERR: JSString = "INVALID_CHARACTER_ERR"
        static let INVALID_MODIFICATION_ERR: JSString = "INVALID_MODIFICATION_ERR"
        static let INVALID_NODE_TYPE_ERR: JSString = "INVALID_NODE_TYPE_ERR"
        static let INVALID_STATE_ERR: JSString = "INVALID_STATE_ERR"
        static let NAMESPACE_ERR: JSString = "NAMESPACE_ERR"
        static let NETWORK_ERR: JSString = "NETWORK_ERR"
        static let NOT_FOUND_ERR: JSString = "NOT_FOUND_ERR"
        static let NOT_SUPPORTED_ERR: JSString = "NOT_SUPPORTED_ERR"
        static let NO_DATA_ALLOWED_ERR: JSString = "NO_DATA_ALLOWED_ERR"
        static let NO_MODIFICATION_ALLOWED_ERR: JSString = "NO_MODIFICATION_ALLOWED_ERR"
        static let QUOTA_EXCEEDED_ERR: JSString = "QUOTA_EXCEEDED_ERR"
        static let SECURITY_ERR: JSString = "SECURITY_ERR"
        static let SYNTAX_ERR: JSString = "SYNTAX_ERR"
        static let TIMEOUT_ERR: JSString = "TIMEOUT_ERR"
        static let TYPE_MISMATCH_ERR: JSString = "TYPE_MISMATCH_ERR"
        static let URL_MISMATCH_ERR: JSString = "URL_MISMATCH_ERR"
        static let VALIDATION_ERR: JSString = "VALIDATION_ERR"
        static let WRONG_DOCUMENT_ERR: JSString = "WRONG_DOCUMENT_ERR"
        static let code: JSString = "code"
        static let message: JSString = "message"
        static let name: JSString = "name"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Keys.name)
        _message = ReadonlyAttribute(jsObject: jsObject, name: Keys.message)
        _code = ReadonlyAttribute(jsObject: jsObject, name: Keys.code)
        self.jsObject = jsObject
    }

    public convenience init(message: String? = nil, name: String? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(message?.jsValue() ?? .undefined, name?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var message: String

    @ReadonlyAttribute
    public var code: UInt16

    public static let INDEX_SIZE_ERR: UInt16 = 1

    public static let DOMSTRING_SIZE_ERR: UInt16 = 2

    public static let HIERARCHY_REQUEST_ERR: UInt16 = 3

    public static let WRONG_DOCUMENT_ERR: UInt16 = 4

    public static let INVALID_CHARACTER_ERR: UInt16 = 5

    public static let NO_DATA_ALLOWED_ERR: UInt16 = 6

    public static let NO_MODIFICATION_ALLOWED_ERR: UInt16 = 7

    public static let NOT_FOUND_ERR: UInt16 = 8

    public static let NOT_SUPPORTED_ERR: UInt16 = 9

    public static let INUSE_ATTRIBUTE_ERR: UInt16 = 10

    public static let INVALID_STATE_ERR: UInt16 = 11

    public static let SYNTAX_ERR: UInt16 = 12

    public static let INVALID_MODIFICATION_ERR: UInt16 = 13

    public static let NAMESPACE_ERR: UInt16 = 14

    public static let INVALID_ACCESS_ERR: UInt16 = 15

    public static let VALIDATION_ERR: UInt16 = 16

    public static let TYPE_MISMATCH_ERR: UInt16 = 17

    public static let SECURITY_ERR: UInt16 = 18

    public static let NETWORK_ERR: UInt16 = 19

    public static let ABORT_ERR: UInt16 = 20

    public static let URL_MISMATCH_ERR: UInt16 = 21

    public static let QUOTA_EXCEEDED_ERR: UInt16 = 22

    public static let TIMEOUT_ERR: UInt16 = 23

    public static let INVALID_NODE_TYPE_ERR: UInt16 = 24

    public static let DATA_CLONE_ERR: UInt16 = 25
}
