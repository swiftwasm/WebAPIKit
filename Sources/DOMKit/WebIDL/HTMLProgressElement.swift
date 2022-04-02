// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLProgressElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLProgressElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        _max = ReadWriteAttribute(jsObject: jsObject, name: Strings.max)
        _position = ReadonlyAttribute(jsObject: jsObject, name: Strings.position)
        _labels = ReadonlyAttribute(jsObject: jsObject, name: Strings.labels)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
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
