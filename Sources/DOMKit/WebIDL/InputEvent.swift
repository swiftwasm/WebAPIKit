import JavaScriptKit

public class InputEvent: UIEvent {
    override public class var constructor: JSFunction { JSObject.global.InputEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadonlyAttribute(jsObject: jsObject, name: "data")
        _isComposing = ReadonlyAttribute(jsObject: jsObject, name: "isComposing")
        _inputType = ReadonlyAttribute(jsObject: jsObject, name: "inputType")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: InputEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var data: String?

    @ReadonlyAttribute
    public var isComposing: Bool

    @ReadonlyAttribute
    public var inputType: String
}
