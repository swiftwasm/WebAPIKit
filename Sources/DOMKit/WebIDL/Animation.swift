// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Animation: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.Animation].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _startTime = ReadWriteAttribute(jsObject: jsObject, name: Strings.startTime)
        _currentTime = ReadWriteAttribute(jsObject: jsObject, name: Strings.currentTime)
        _id = ReadWriteAttribute(jsObject: jsObject, name: Strings.id)
        _effect = ReadWriteAttribute(jsObject: jsObject, name: Strings.effect)
        _timeline = ReadWriteAttribute(jsObject: jsObject, name: Strings.timeline)
        _playbackRate = ReadWriteAttribute(jsObject: jsObject, name: Strings.playbackRate)
        _playState = ReadonlyAttribute(jsObject: jsObject, name: Strings.playState)
        _replaceState = ReadonlyAttribute(jsObject: jsObject, name: Strings.replaceState)
        _pending = ReadonlyAttribute(jsObject: jsObject, name: Strings.pending)
        _ready = ReadonlyAttribute(jsObject: jsObject, name: Strings.ready)
        _finished = ReadonlyAttribute(jsObject: jsObject, name: Strings.finished)
        _onfinish = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onfinish)
        _oncancel = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.oncancel)
        _onremove = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onremove)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var startTime: CSSNumberish?

    @ReadWriteAttribute
    public var currentTime: CSSNumberish?

    public convenience init(effect: AnimationEffect? = nil, timeline: AnimationTimeline? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [effect?.jsValue() ?? .undefined, timeline?.jsValue() ?? .undefined]))
    }

    @ReadWriteAttribute
    public var id: String

    @ReadWriteAttribute
    public var effect: AnimationEffect?

    @ReadWriteAttribute
    public var timeline: AnimationTimeline?

    @ReadWriteAttribute
    public var playbackRate: Double

    @ReadonlyAttribute
    public var playState: AnimationPlayState

    @ReadonlyAttribute
    public var replaceState: AnimationReplaceState

    @ReadonlyAttribute
    public var pending: Bool

    @ReadonlyAttribute
    public var ready: JSPromise

    @ReadonlyAttribute
    public var finished: JSPromise

    @ClosureAttribute1Optional
    public var onfinish: EventHandler

    @ClosureAttribute1Optional
    public var oncancel: EventHandler

    @ClosureAttribute1Optional
    public var onremove: EventHandler

    public func cancel() {
        let this = jsObject
        _ = this[Strings.cancel].function!(this: this, arguments: [])
    }

    public func finish() {
        let this = jsObject
        _ = this[Strings.finish].function!(this: this, arguments: [])
    }

    public func play() {
        let this = jsObject
        _ = this[Strings.play].function!(this: this, arguments: [])
    }

    public func pause() {
        let this = jsObject
        _ = this[Strings.pause].function!(this: this, arguments: [])
    }

    public func updatePlaybackRate(playbackRate: Double) {
        let this = jsObject
        _ = this[Strings.updatePlaybackRate].function!(this: this, arguments: [playbackRate.jsValue()])
    }

    public func reverse() {
        let this = jsObject
        _ = this[Strings.reverse].function!(this: this, arguments: [])
    }

    public func persist() {
        let this = jsObject
        _ = this[Strings.persist].function!(this: this, arguments: [])
    }

    public func commitStyles() {
        let this = jsObject
        _ = this[Strings.commitStyles].function!(this: this, arguments: [])
    }
}
