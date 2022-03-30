import JavaScriptKit

public class WheelEvent: MouseEvent {
    override public class var constructor: JSFunction { JSObject.global.WheelEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _deltaX = ReadonlyAttribute(jsObject: jsObject, name: "deltaX")
        _deltaY = ReadonlyAttribute(jsObject: jsObject, name: "deltaY")
        _deltaZ = ReadonlyAttribute(jsObject: jsObject, name: "deltaZ")
        _deltaMode = ReadonlyAttribute(jsObject: jsObject, name: "deltaMode")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: WheelEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    public static let DOM_DELTA_PIXEL: Double = 0x00

    public static let DOM_DELTA_LINE: Double = 0x01

    public static let DOM_DELTA_PAGE: Double = 0x02

    @ReadonlyAttribute
    public var deltaX: Double

    @ReadonlyAttribute
    public var deltaY: Double

    @ReadonlyAttribute
    public var deltaZ: Double

    @ReadonlyAttribute
    public var deltaMode: Double
}
