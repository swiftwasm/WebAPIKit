// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Animatable: JSBridgedClass {}
public extension Animatable {
    @inlinable func animate(keyframes: JSObject?, options: __UNSUPPORTED_UNION__? = nil) -> Animation {
        let this = jsObject
        return this[Strings.animate].function!(this: this, arguments: [keyframes.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable func getAnimations(options: GetAnimationsOptions? = nil) -> [Animation] {
        let this = jsObject
        return this[Strings.getAnimations].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }
}
