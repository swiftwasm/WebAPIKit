import JavaScriptKit

open class BridgedDictionary: JSValueCompatible {
    public let jsObject: JSObject

    public var jsValue: JSValue {
        jsObject.jsValue
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public static func construct(from value: JSValue) -> Self? {
        if let object = value.object {
            return Self.construct(from: object)
        }
        return nil
    }

    public static func construct(from object: JSObject) -> Self? {
        Self(unsafelyWrapping: object)
    }
}
