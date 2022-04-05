// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NavigationCurrentEntryChangeEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.NavigationCurrentEntryChangeEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _navigationType = ReadonlyAttribute(jsObject: jsObject, name: Strings.navigationType)
        _from = ReadonlyAttribute(jsObject: jsObject, name: Strings.from)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInit: NavigationCurrentEntryChangeEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue, eventInit.jsValue]))
    }

    @ReadonlyAttribute
    public var navigationType: NavigationNavigationType?

    @ReadonlyAttribute
    public var from: NavigationHistoryEntry
}
