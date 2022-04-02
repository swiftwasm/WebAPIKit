// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DragEvent: MouseEvent {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.DragEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _dataTransfer = ReadonlyAttribute(jsObject: jsObject, name: Strings.dataTransfer)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: DragEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), eventInitDict?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var dataTransfer: DataTransfer?
}
