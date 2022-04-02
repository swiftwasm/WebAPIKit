// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TransitionEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.TransitionEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _propertyName = ReadonlyAttribute(jsObject: jsObject, name: Strings.propertyName)
        _elapsedTime = ReadonlyAttribute(jsObject: jsObject, name: Strings.elapsedTime)
        _pseudoElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.pseudoElement)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, transitionEventInitDict: TransitionEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), transitionEventInitDict?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var propertyName: String

    @ReadonlyAttribute
    public var elapsedTime: Double

    @ReadonlyAttribute
    public var pseudoElement: String
}
