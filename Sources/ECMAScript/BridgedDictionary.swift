import JavaScriptKit

public protocol JSDictionaryCompatible: JSValueCompatible {
    var jsObject: JSObject { get }
    init(unsafelyWrapping: JSObject)
}

public extension JSDictionaryCompatible {
    static func construct(from value: JSValue) -> Self? {
        if let object = value.object {
            return self.init(unsafelyWrapping: object)
        } else {
            return nil
        }
    }

    var jsValue: JSValue {
        .object(jsObject)
    }
}

