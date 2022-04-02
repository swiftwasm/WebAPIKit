// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StylePropertyMap: StylePropertyMapReadOnly {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.StylePropertyMap].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public func set(property: String, values: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.set].function!(this: this, arguments: [property.jsValue()] + values.map { $0.jsValue() })
    }

    @inlinable public func append(property: String, values: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.append].function!(this: this, arguments: [property.jsValue()] + values.map { $0.jsValue() })
    }

    @inlinable public func delete(property: String) {
        let this = jsObject
        _ = this[Strings.delete].function!(this: this, arguments: [property.jsValue()])
    }

    @inlinable public func clear() {
        let this = jsObject
        _ = this[Strings.clear].function!(this: this, arguments: [])
    }
}
