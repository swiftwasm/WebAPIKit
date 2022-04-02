// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCError: DOMException {
    override public class var constructor: JSFunction { JSObject.global[Strings.RTCError].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _errorDetail = ReadonlyAttribute(jsObject: jsObject, name: Strings.errorDetail)
        _sdpLineNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.sdpLineNumber)
        _sctpCauseCode = ReadonlyAttribute(jsObject: jsObject, name: Strings.sctpCauseCode)
        _receivedAlert = ReadonlyAttribute(jsObject: jsObject, name: Strings.receivedAlert)
        _sentAlert = ReadonlyAttribute(jsObject: jsObject, name: Strings.sentAlert)
        _httpRequestStatusCode = ReadonlyAttribute(jsObject: jsObject, name: Strings.httpRequestStatusCode)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(init: RTCErrorInit, message: String? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(`init`.jsValue(), message?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var errorDetail: RTCErrorDetailType

    @ReadonlyAttribute
    public var sdpLineNumber: Int32?

    @ReadonlyAttribute
    public var sctpCauseCode: Int32?

    @ReadonlyAttribute
    public var receivedAlert: UInt32?

    @ReadonlyAttribute
    public var sentAlert: UInt32?

    @ReadonlyAttribute
    public var httpRequestStatusCode: Int32?
}
