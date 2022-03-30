import JavaScriptKit

public class UIEvent: Event {
    override public class var constructor: JSFunction { JSObject.global.UIEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _view = ReadonlyAttribute(jsObject: jsObject, name: "view")
        _detail = ReadonlyAttribute(jsObject: jsObject, name: "detail")
        _which = ReadonlyAttribute(jsObject: jsObject, name: "which")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: UIEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var view: Window?

    @ReadonlyAttribute
    public var detail: Double

    public func initUIEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, viewArg: Window? = nil, detailArg: Double? = nil) {
        _ = jsObject["initUIEvent"]!(typeArg.jsValue(), bubblesArg?.jsValue() ?? .undefined, cancelableArg?.jsValue() ?? .undefined, viewArg?.jsValue() ?? .undefined, detailArg?.jsValue() ?? .undefined)
    }

    @ReadonlyAttribute
    public var which: Double
}
