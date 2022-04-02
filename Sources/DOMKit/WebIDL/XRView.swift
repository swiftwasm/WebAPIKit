// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRView: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XRView].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _eye = ReadonlyAttribute(jsObject: jsObject, name: Strings.eye)
        _projectionMatrix = ReadonlyAttribute(jsObject: jsObject, name: Strings.projectionMatrix)
        _transform = ReadonlyAttribute(jsObject: jsObject, name: Strings.transform)
        _recommendedViewportScale = ReadonlyAttribute(jsObject: jsObject, name: Strings.recommendedViewportScale)
        _isFirstPersonObserver = ReadonlyAttribute(jsObject: jsObject, name: Strings.isFirstPersonObserver)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var eye: XREye

    @ReadonlyAttribute
    public var projectionMatrix: Float32Array

    @ReadonlyAttribute
    public var transform: XRRigidTransform

    @ReadonlyAttribute
    public var recommendedViewportScale: Double?

    public func requestViewportScale(scale: Double?) {
        _ = jsObject[Strings.requestViewportScale]!(scale.jsValue())
    }

    @ReadonlyAttribute
    public var isFirstPersonObserver: Bool
}
