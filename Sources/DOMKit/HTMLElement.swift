
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class HTMLElement: Element, DocumentAndElementEventHandlers, ElementContentEditable, GlobalEventHandlers, HTMLOrSVGElement {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLElement.function! }

    public required init(objectRef: JSObjectRef) {
        _title = ReadWriteAttribute(objectRef: objectRef, name: "title")
        _lang = ReadWriteAttribute(objectRef: objectRef, name: "lang")
        _translate = ReadWriteAttribute(objectRef: objectRef, name: "translate")
        _dir = ReadWriteAttribute(objectRef: objectRef, name: "dir")
        _hidden = ReadWriteAttribute(objectRef: objectRef, name: "hidden")
        _accessKey = ReadWriteAttribute(objectRef: objectRef, name: "accessKey")
        _accessKeyLabel = ReadonlyAttribute(objectRef: objectRef, name: "accessKeyLabel")
        _draggable = ReadWriteAttribute(objectRef: objectRef, name: "draggable")
        _spellcheck = ReadWriteAttribute(objectRef: objectRef, name: "spellcheck")
        _autocapitalize = ReadWriteAttribute(objectRef: objectRef, name: "autocapitalize")
        _innerText = ReadWriteAttribute(objectRef: objectRef, name: "innerText")
        super.init(objectRef: objectRef)
    }

    public convenience init() {
        self.init(objectRef: HTMLElement.classRef.new())
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
        _ = objectRef.click!()
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
        return objectRef.attachInternals!().fromJSValue()
    }
}
