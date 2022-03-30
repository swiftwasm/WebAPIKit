// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMException: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DOMException.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: "name")
        _message = ReadonlyAttribute(jsObject: jsObject, name: "message")
        _code = ReadonlyAttribute(jsObject: jsObject, name: "code")
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
