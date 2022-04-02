// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSFontFeatureValuesMap: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.CSSFontFeatureValuesMap].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    // XXX: make me Map-like!

    public func set(featureValueName: String, values: __UNSUPPORTED_UNION__) {
        _ = jsObject[Strings.set]!(featureValueName.jsValue(), values.jsValue())
    }
}
