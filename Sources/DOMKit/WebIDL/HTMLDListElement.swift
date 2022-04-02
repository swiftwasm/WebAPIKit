// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLDListElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLDListElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _compact = ReadWriteAttribute(jsObject: jsObject, name: Strings.compact)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var compact: Bool
}
