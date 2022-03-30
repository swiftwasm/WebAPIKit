import JavaScriptKit

public class CompositionEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global.CompositionEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadonlyAttribute(jsObject: jsObject, name: "data")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: CompositionEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var data: String

    public func initCompositionEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, viewArg: WindowProxy? = nil, dataArg: String? = nil) {
        _ = jsObject["initCompositionEvent"]!(typeArg.jsValue(), bubblesArg?.jsValue() ?? .undefined, cancelableArg?.jsValue() ?? .undefined, viewArg?.jsValue() ?? .undefined, dataArg?.jsValue() ?? .undefined)
    }
}
