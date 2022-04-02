// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaSession: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.MediaSession].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _metadata = ReadWriteAttribute(jsObject: jsObject, name: Strings.metadata)
        _playbackState = ReadWriteAttribute(jsObject: jsObject, name: Strings.playbackState)
        self.jsObject = jsObject
    }

    @ReadWriteAttribute
    public var metadata: MediaMetadata?

    @ReadWriteAttribute
    public var playbackState: MediaSessionPlaybackState

    public func setActionHandler(action: MediaSessionAction, handler: MediaSessionActionHandler?) {
        _ = jsObject[Strings.setActionHandler]!(action.jsValue(), handler.jsValue())
    }

    public func setPositionState(state: MediaPositionState? = nil) {
        _ = jsObject[Strings.setPositionState]!(state?.jsValue() ?? .undefined)
    }

    public func setMicrophoneActive(active: Bool) {
        _ = jsObject[Strings.setMicrophoneActive]!(active.jsValue())
    }

    public func setCameraActive(active: Bool) {
        _ = jsObject[Strings.setCameraActive]!(active.jsValue())
    }
}
