// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRMediaBinding: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XRMediaBinding].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(session: XRSession) {
        self.init(unsafelyWrapping: Self.constructor.new(session.jsValue()))
    }

    public func createQuadLayer(video: HTMLVideoElement, init: XRMediaQuadLayerInit? = nil) -> XRQuadLayer {
        jsObject[Strings.createQuadLayer]!(video.jsValue(), `init`?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func createCylinderLayer(video: HTMLVideoElement, init: XRMediaCylinderLayerInit? = nil) -> XRCylinderLayer {
        jsObject[Strings.createCylinderLayer]!(video.jsValue(), `init`?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func createEquirectLayer(video: HTMLVideoElement, init: XRMediaEquirectLayerInit? = nil) -> XREquirectLayer {
        jsObject[Strings.createEquirectLayer]!(video.jsValue(), `init`?.jsValue() ?? .undefined).fromJSValue()!
    }
}