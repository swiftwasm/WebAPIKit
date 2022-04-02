// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaEncryptedEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.MediaEncryptedEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _initDataType = ReadonlyAttribute(jsObject: jsObject, name: Strings.initDataType)
        _initData = ReadonlyAttribute(jsObject: jsObject, name: Strings.initData)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: MediaEncryptedEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), eventInitDict?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var initDataType: String

    @ReadonlyAttribute
    public var initData: ArrayBuffer?
}
