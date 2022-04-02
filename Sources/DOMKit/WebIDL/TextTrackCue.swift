// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextTrackCue: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.TextTrackCue.function! }

    private enum Keys {
        static let endTime: JSString = "endTime"
        static let id: JSString = "id"
        static let onenter: JSString = "onenter"
        static let onexit: JSString = "onexit"
        static let pauseOnExit: JSString = "pauseOnExit"
        static let startTime: JSString = "startTime"
        static let track: JSString = "track"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _track = ReadonlyAttribute(jsObject: jsObject, name: Keys.track)
        _id = ReadWriteAttribute(jsObject: jsObject, name: Keys.id)
        _startTime = ReadWriteAttribute(jsObject: jsObject, name: Keys.startTime)
        _endTime = ReadWriteAttribute(jsObject: jsObject, name: Keys.endTime)
        _pauseOnExit = ReadWriteAttribute(jsObject: jsObject, name: Keys.pauseOnExit)
        _onenter = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onenter)
        _onexit = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onexit)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var track: TextTrack?

    @ReadWriteAttribute
    public var id: String

    @ReadWriteAttribute
    public var startTime: Double

    @ReadWriteAttribute
    public var endTime: Double

    @ReadWriteAttribute
    public var pauseOnExit: Bool

    @ClosureAttribute.Optional1
    public var onenter: EventHandler

    @ClosureAttribute.Optional1
    public var onexit: EventHandler
}