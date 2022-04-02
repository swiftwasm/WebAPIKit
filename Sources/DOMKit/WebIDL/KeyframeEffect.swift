// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class KeyframeEffect: AnimationEffect {
    override public class var constructor: JSFunction { JSObject.global[Strings.KeyframeEffect].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _target = ReadWriteAttribute(jsObject: jsObject, name: Strings.target)
        _pseudoElement = ReadWriteAttribute(jsObject: jsObject, name: Strings.pseudoElement)
        _composite = ReadWriteAttribute(jsObject: jsObject, name: Strings.composite)
        _iterationComposite = ReadWriteAttribute(jsObject: jsObject, name: Strings.iterationComposite)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(target: Element?, keyframes: JSObject?, options: __UNSUPPORTED_UNION__? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(target.jsValue(), keyframes.jsValue(), options?.jsValue() ?? .undefined))
    }

    public convenience init(source: KeyframeEffect) {
        self.init(unsafelyWrapping: Self.constructor.new(source.jsValue()))
    }

    @ReadWriteAttribute
    public var target: Element?

    @ReadWriteAttribute
    public var pseudoElement: String?

    @ReadWriteAttribute
    public var composite: CompositeOperation

    public func getKeyframes() -> [JSObject] {
        jsObject[Strings.getKeyframes]!().fromJSValue()!
    }

    public func setKeyframes(keyframes: JSObject?) {
        _ = jsObject[Strings.setKeyframes]!(keyframes.jsValue())
    }

    @ReadWriteAttribute
    public var iterationComposite: IterationCompositeOperation
}
