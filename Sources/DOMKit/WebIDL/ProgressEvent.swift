// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ProgressEvent: Event {
    override public class var constructor: JSFunction { JSObject.global.ProgressEvent.function! }

    private enum Keys {
        static let loaded: JSString = "loaded"
        static let lengthComputable: JSString = "lengthComputable"
        static let total: JSString = "total"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _lengthComputable = ReadonlyAttribute(jsObject: jsObject, name: Keys.lengthComputable)
        _loaded = ReadonlyAttribute(jsObject: jsObject, name: Keys.loaded)
        _total = ReadonlyAttribute(jsObject: jsObject, name: Keys.total)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: ProgressEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var lengthComputable: Bool

    @ReadonlyAttribute
    public var loaded: UInt64

    @ReadonlyAttribute
    public var total: UInt64
}
