// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class KeyframeEffect: AnimationEffect {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.KeyframeEffect].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _iterationComposite = ReadWriteAttribute(jsObject: jsObject, name: Strings.iterationComposite)
        _target = ReadWriteAttribute(jsObject: jsObject, name: Strings.target)
        _pseudoElement = ReadWriteAttribute(jsObject: jsObject, name: Strings.pseudoElement)
        _composite = ReadWriteAttribute(jsObject: jsObject, name: Strings.composite)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var iterationComposite: IterationCompositeOperation

    @inlinable public convenience init(target: Element?, keyframes: JSObject?, options: Double_or_KeyframeEffectOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [target.jsValue, keyframes.jsValue, options?.jsValue ?? .undefined]))
    }

    @inlinable public convenience init(source: KeyframeEffect) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [source.jsValue]))
    }

    @ReadWriteAttribute
    public var target: Element?

    @ReadWriteAttribute
    public var pseudoElement: String?

    @ReadWriteAttribute
    public var composite: CompositeOperation

    @inlinable public func getKeyframes() -> [JSObject] {
        let this = jsObject
        return this[Strings.getKeyframes].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func setKeyframes(keyframes: JSObject?) {
        let this = jsObject
        _ = this[Strings.setKeyframes].function!(this: this, arguments: [keyframes.jsValue])
    }
}
