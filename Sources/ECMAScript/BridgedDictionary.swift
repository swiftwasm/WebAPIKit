import JavaScriptKit

open class BridgedDictionary: JSValueCompatible {
    public let jsObject: JSObject

    @inlinable public var jsValue: JSValue {
        jsObject.jsValue
    }

    @inlinable public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public static func construct(from value: JSValue) -> Self? {
        if let object = value.object {
            return Self.construct(from: object)
        }
        return nil
    }

    @inlinable public static func construct(from object: JSObject) -> Self? {
        Self(unsafelyWrapping: object)
    }
}
