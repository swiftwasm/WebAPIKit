import JavaScriptKit

public class FocusEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global.FocusEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _relatedTarget = ReadonlyAttribute(jsObject: jsObject, name: "relatedTarget")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: FocusEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var relatedTarget: EventTarget?
}
