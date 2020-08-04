
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class DOMException: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.DOMException.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _name = ReadonlyAttribute(objectRef: objectRef, name: "name")
        _message = ReadonlyAttribute(objectRef: objectRef, name: "message")
        _code = ReadonlyAttribute(objectRef: objectRef, name: "code")
        self.objectRef = objectRef
    }

    public convenience init(message: String = "", name: String = "Error") {
        self.init(objectRef: DOMException.classRef(new: JSValue(from: message), JSValue(from: name)))
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var message: String

    @ReadonlyAttribute
    public var code: UInt16

    public let INDEX_SIZE_ERR: UInt16 = 1

    public let DOMSTRING_SIZE_ERR: UInt16 = 2

    public let HIERARCHY_REQUEST_ERR: UInt16 = 3

    public let WRONG_DOCUMENT_ERR: UInt16 = 4

    public let INVALID_CHARACTER_ERR: UInt16 = 5

    public let NO_DATA_ALLOWED_ERR: UInt16 = 6

    public let NO_MODIFICATION_ALLOWED_ERR: UInt16 = 7

    public let NOT_FOUND_ERR: UInt16 = 8

    public let NOT_SUPPORTED_ERR: UInt16 = 9

    public let INUSE_ATTRIBUTE_ERR: UInt16 = 10

    public let INVALID_STATE_ERR: UInt16 = 11

    public let SYNTAX_ERR: UInt16 = 12

    public let INVALID_MODIFICATION_ERR: UInt16 = 13

    public let NAMESPACE_ERR: UInt16 = 14

    public let INVALID_ACCESS_ERR: UInt16 = 15

    public let VALIDATION_ERR: UInt16 = 16

    public let TYPE_MISMATCH_ERR: UInt16 = 17

    public let SECURITY_ERR: UInt16 = 18

    public let NETWORK_ERR: UInt16 = 19

    public let ABORT_ERR: UInt16 = 20

    public let URL_MISMATCH_ERR: UInt16 = 21

    public let QUOTA_EXCEEDED_ERR: UInt16 = 22

    public let TIMEOUT_ERR: UInt16 = 23

    public let INVALID_NODE_TYPE_ERR: UInt16 = 24

    public let DATA_CLONE_ERR: UInt16 = 25
}
