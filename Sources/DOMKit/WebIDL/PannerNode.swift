// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PannerNode: AudioNode {
    override public class var constructor: JSFunction { JSObject.global[Strings.PannerNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _panningModel = ReadWriteAttribute(jsObject: jsObject, name: Strings.panningModel)
        _positionX = ReadonlyAttribute(jsObject: jsObject, name: Strings.positionX)
        _positionY = ReadonlyAttribute(jsObject: jsObject, name: Strings.positionY)
        _positionZ = ReadonlyAttribute(jsObject: jsObject, name: Strings.positionZ)
        _orientationX = ReadonlyAttribute(jsObject: jsObject, name: Strings.orientationX)
        _orientationY = ReadonlyAttribute(jsObject: jsObject, name: Strings.orientationY)
        _orientationZ = ReadonlyAttribute(jsObject: jsObject, name: Strings.orientationZ)
        _distanceModel = ReadWriteAttribute(jsObject: jsObject, name: Strings.distanceModel)
        _refDistance = ReadWriteAttribute(jsObject: jsObject, name: Strings.refDistance)
        _maxDistance = ReadWriteAttribute(jsObject: jsObject, name: Strings.maxDistance)
        _rolloffFactor = ReadWriteAttribute(jsObject: jsObject, name: Strings.rolloffFactor)
        _coneInnerAngle = ReadWriteAttribute(jsObject: jsObject, name: Strings.coneInnerAngle)
        _coneOuterAngle = ReadWriteAttribute(jsObject: jsObject, name: Strings.coneOuterAngle)
        _coneOuterGain = ReadWriteAttribute(jsObject: jsObject, name: Strings.coneOuterGain)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(context: BaseAudioContext, options: PannerOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(context.jsValue(), options?.jsValue() ?? .undefined))
    }

    @ReadWriteAttribute
    public var panningModel: PanningModelType

    @ReadonlyAttribute
    public var positionX: AudioParam

    @ReadonlyAttribute
    public var positionY: AudioParam

    @ReadonlyAttribute
    public var positionZ: AudioParam

    @ReadonlyAttribute
    public var orientationX: AudioParam

    @ReadonlyAttribute
    public var orientationY: AudioParam

    @ReadonlyAttribute
    public var orientationZ: AudioParam

    @ReadWriteAttribute
    public var distanceModel: DistanceModelType

    @ReadWriteAttribute
    public var refDistance: Double

    @ReadWriteAttribute
    public var maxDistance: Double

    @ReadWriteAttribute
    public var rolloffFactor: Double

    @ReadWriteAttribute
    public var coneInnerAngle: Double

    @ReadWriteAttribute
    public var coneOuterAngle: Double

    @ReadWriteAttribute
    public var coneOuterGain: Double

    public func setPosition(x: Float, y: Float, z: Float) {
        let this = jsObject
        _ = this[Strings.setPosition].function!(this: this, arguments: [x.jsValue(), y.jsValue(), z.jsValue()])
    }

    public func setOrientation(x: Float, y: Float, z: Float) {
        let this = jsObject
        _ = this[Strings.setOrientation].function!(this: this, arguments: [x.jsValue(), y.jsValue(), z.jsValue()])
    }
}
