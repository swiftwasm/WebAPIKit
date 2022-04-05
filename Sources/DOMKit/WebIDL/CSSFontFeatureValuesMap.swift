// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSFontFeatureValuesMap: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.CSSFontFeatureValuesMap].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    // XXX: make me Map-like!

    @inlinable public func set(featureValueName: String, values: UInt32_or_seq_of_UInt32) {
        let this = jsObject
        _ = this[Strings.set].function!(this: this, arguments: [featureValueName.jsValue, values.jsValue])
    }
}
