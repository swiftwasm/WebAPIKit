import JavaScriptKit

public class Performance: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.Performance.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _timeOrigin = ReadonlyAttribute(jsObject: jsObject, name: "timeOrigin")
        super.init(unsafelyWrapping: jsObject)
    }

    public func now() -> DOMHighResTimeStamp {
        jsObject["now"]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var timeOrigin: DOMHighResTimeStamp

    public func toJSON() -> JSObject {
        jsObject["toJSON"]!().fromJSValue()!
    }
}