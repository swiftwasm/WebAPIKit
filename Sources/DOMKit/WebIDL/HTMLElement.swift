
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLElement: Element, DocumentAndElementEventHandlers, ElementContentEditable, GlobalEventHandlers, HTMLOrSVGElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLElement.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _title = ReadWriteAttribute(jsObject: jsObject, name: "title")
        _lang = ReadWriteAttribute(jsObject: jsObject, name: "lang")
        _translate = ReadWriteAttribute(jsObject: jsObject, name: "translate")
        _dir = ReadWriteAttribute(jsObject: jsObject, name: "dir")
        _hidden = ReadWriteAttribute(jsObject: jsObject, name: "hidden")
        _accessKey = ReadWriteAttribute(jsObject: jsObject, name: "accessKey")
        _accessKeyLabel = ReadonlyAttribute(jsObject: jsObject, name: "accessKeyLabel")
        _draggable = ReadWriteAttribute(jsObject: jsObject, name: "draggable")
        _spellcheck = ReadWriteAttribute(jsObject: jsObject, name: "spellcheck")
        _autocapitalize = ReadWriteAttribute(jsObject: jsObject, name: "autocapitalize")
        _innerText = ReadWriteAttribute(jsObject: jsObject, name: "innerText")
        super.init(withCompatibleObject: jsObject)
    }

    public convenience init() {
        self.init(withCompatibleObject: HTMLElement.constructor.new())
    }

    @ReadWriteAttribute
    public var title: String

    @ReadWriteAttribute
    public var lang: String

    @ReadWriteAttribute
    public var translate: Bool

    @ReadWriteAttribute
    public var dir: String

    @ReadWriteAttribute
    public var hidden: Bool

    public func click() {
        _ = jsObject.click!()
    }

    @ReadWriteAttribute
    public var accessKey: String

    @ReadonlyAttribute
    public var accessKeyLabel: String

    @ReadWriteAttribute
    public var draggable: Bool

    @ReadWriteAttribute
    public var spellcheck: Bool

    @ReadWriteAttribute
    public var autocapitalize: String

    @ReadWriteAttribute
    public var innerText: String

    public func attachInternals() -> ElementInternals {
        return jsObject.attachInternals!().fromJSValue()!
    }
}
