// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NavigationEvent: UIEvent {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.NavigationEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _dir = ReadonlyAttribute(jsObject: jsObject, name: Strings.dir)
        _relatedTarget = ReadonlyAttribute(jsObject: jsObject, name: Strings.relatedTarget)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: NavigationEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue, eventInitDict?.jsValue ?? .undefined]))
    }

    @ReadonlyAttribute
    public var dir: SpatialNavigationDirection

    @ReadonlyAttribute
    public var relatedTarget: EventTarget?
}
