// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DragEvent: MouseEvent {
    override public class var constructor: JSFunction { JSObject.global.DragEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _dataTransfer = ReadonlyAttribute(jsObject: jsObject, name: Strings.dataTransfer)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: DragEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var dataTransfer: DataTransfer?
}
