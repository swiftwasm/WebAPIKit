
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLFormElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLFormElement.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _acceptCharset = ReadWriteAttribute(jsObject: jsObject, name: "acceptCharset")
        _action = ReadWriteAttribute(jsObject: jsObject, name: "action")
        _autocomplete = ReadWriteAttribute(jsObject: jsObject, name: "autocomplete")
        _enctype = ReadWriteAttribute(jsObject: jsObject, name: "enctype")
        _encoding = ReadWriteAttribute(jsObject: jsObject, name: "encoding")
        _method = ReadWriteAttribute(jsObject: jsObject, name: "method")
        _name = ReadWriteAttribute(jsObject: jsObject, name: "name")
        _noValidate = ReadWriteAttribute(jsObject: jsObject, name: "noValidate")
        _target = ReadWriteAttribute(jsObject: jsObject, name: "target")
        _rel = ReadWriteAttribute(jsObject: jsObject, name: "rel")
        _relList = ReadonlyAttribute(jsObject: jsObject, name: "relList")
        _elements = ReadonlyAttribute(jsObject: jsObject, name: "elements")
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        super.init(withCompatibleObject: jsObject)
    }

    public subscript(_: String) -> RadioNodeListOrElement? {
        return jsObject.name.fromJSValue()!
    }

    public convenience init() {
        self.init(withCompatibleObject: HTMLFormElement.constructor.new())
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
        _ = jsObject.submit!()
    }

    public func requestSubmit(submitter: HTMLElement? = nil) {
        _ = jsObject.requestSubmit!(submitter.jsValue())
    }

    public func reset() {
        _ = jsObject.reset!()
    }

    public func checkValidity() -> Bool {
        return jsObject.checkValidity!().fromJSValue()!
    }

    public func reportValidity() -> Bool {
        return jsObject.reportValidity!().fromJSValue()!
    }
}
