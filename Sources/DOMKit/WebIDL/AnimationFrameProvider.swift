// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol AnimationFrameProvider: JSBridgedClass {}
public extension AnimationFrameProvider {
    // XXX: method 'requestAnimationFrame' is ignored

    func cancelAnimationFrame(handle: UInt32) {
        _ = jsObject["cancelAnimationFrame"]!(handle.jsValue())
    }
}
