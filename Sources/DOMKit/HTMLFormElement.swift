
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLFormElement: HTMLElement {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLFormElement.function! }

    public required init(objectRef: JSObjectRef) {
        _acceptCharset = ReadWriteAttribute(objectRef: objectRef, name: "acceptCharset")
        _action = ReadWriteAttribute(objectRef: objectRef, name: "action")
        _autocomplete = ReadWriteAttribute(objectRef: objectRef, name: "autocomplete")
        _enctype = ReadWriteAttribute(objectRef: objectRef, name: "enctype")
        _encoding = ReadWriteAttribute(objectRef: objectRef, name: "encoding")
        _method = ReadWriteAttribute(objectRef: objectRef, name: "method")
        _name = ReadWriteAttribute(objectRef: objectRef, name: "name")
        _noValidate = ReadWriteAttribute(objectRef: objectRef, name: "noValidate")
        _target = ReadWriteAttribute(objectRef: objectRef, name: "target")
        _rel = ReadWriteAttribute(objectRef: objectRef, name: "rel")
        _relList = ReadonlyAttribute(objectRef: objectRef, name: "relList")
        _elements = ReadonlyAttribute(objectRef: objectRef, name: "elements")
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        super.init(objectRef: objectRef)
    }

    public subscript(name: String) -> RadioNodeListOrElement? {
        return objectRef[dynamicMember: name].fromJSValue()
    }

    public convenience init() {
        self.init(objectRef: HTMLFormElement.classRef.new())
    }

    @ReadWriteAttribute
    public var acceptCharset: String

    @ReadWriteAttribute
    public var action: String

    @ReadWriteAttribute
    public var autocomplete: String

    @ReadWriteAttribute
    public var enctype: String

    @ReadWriteAttribute
    public var encoding: String

    @ReadWriteAttribute
    public var method: String

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var noValidate: Bool

    @ReadWriteAttribute
    public var target: String

    @ReadWriteAttribute
    public var rel: String

    @ReadonlyAttribute
    public var relList: DOMTokenList

    @ReadonlyAttribute
    public var elements: HTMLFormControlsCollection

    @ReadonlyAttribute
    public var length: UInt32

    public func submit() {
        _ = objectRef.submit!()
    }

    public func requestSubmit(submitter: HTMLElement? = nil) {
        _ = objectRef.requestSubmit!(submitter.jsValue())
    }

    public func reset() {
        _ = objectRef.reset!()
    }

    public func checkValidity() -> Bool {
        return objectRef.checkValidity!().fromJSValue()
    }

    public func reportValidity() -> Bool {
        return objectRef.reportValidity!().fromJSValue()
    }
}
