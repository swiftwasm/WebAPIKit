// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let cancelAnimationFrame: JSString = "cancelAnimationFrame"
    static let requestAnimationFrame: JSString = "requestAnimationFrame"
}

public protocol AnimationFrameProvider: JSBridgedClass {}
public extension AnimationFrameProvider {
    // XXX: method 'requestAnimationFrame' is ignored

    func cancelAnimationFrame(handle: UInt32) {
        _ = jsObject[Keys.cancelAnimationFrame]!(handle.jsValue())
    }
}
