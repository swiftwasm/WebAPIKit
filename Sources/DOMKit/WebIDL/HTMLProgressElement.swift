// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLProgressElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLProgressElement.function! }

    private enum Keys {
        static let labels: JSString = "labels"
        static let max: JSString = "max"
        static let position: JSString = "position"
        static let value: JSString = "value"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: Keys.value)
        _max = ReadWriteAttribute(jsObject: jsObject, name: Keys.max)
        _position = ReadonlyAttribute(jsObject: jsObject, name: Keys.position)
        _labels = ReadonlyAttribute(jsObject: jsObject, name: Keys.labels)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var value: Double

    @ReadWriteAttribute
    public var max: Double

    @ReadonlyAttribute
    public var position: Double

    @ReadonlyAttribute
    public var labels: NodeList
}
