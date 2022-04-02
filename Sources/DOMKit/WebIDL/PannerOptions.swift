// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PannerOptions: BridgedDictionary {
    public convenience init(panningModel: PanningModelType, distanceModel: DistanceModelType, positionX: Float, positionY: Float, positionZ: Float, orientationX: Float, orientationY: Float, orientationZ: Float, refDistance: Double, maxDistance: Double, rolloffFactor: Double, coneInnerAngle: Double, coneOuterAngle: Double, coneOuterGain: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.panningModel] = panningModel.jsValue()
        object[Strings.distanceModel] = distanceModel.jsValue()
        object[Strings.positionX] = positionX.jsValue()
        object[Strings.positionY] = positionY.jsValue()
        object[Strings.positionZ] = positionZ.jsValue()
        object[Strings.orientationX] = orientationX.jsValue()
        object[Strings.orientationY] = orientationY.jsValue()
        object[Strings.orientationZ] = orientationZ.jsValue()
        object[Strings.refDistance] = refDistance.jsValue()
        object[Strings.maxDistance] = maxDistance.jsValue()
        object[Strings.rolloffFactor] = rolloffFactor.jsValue()
        object[Strings.coneInnerAngle] = coneInnerAngle.jsValue()
        object[Strings.coneOuterAngle] = coneOuterAngle.jsValue()
        object[Strings.coneOuterGain] = coneOuterGain.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _panningModel = ReadWriteAttribute(jsObject: object, name: Strings.panningModel)
        _distanceModel = ReadWriteAttribute(jsObject: object, name: Strings.distanceModel)
        _positionX = ReadWriteAttribute(jsObject: object, name: Strings.positionX)
        _positionY = ReadWriteAttribute(jsObject: object, name: Strings.positionY)
        _positionZ = ReadWriteAttribute(jsObject: object, name: Strings.positionZ)
        _orientationX = ReadWriteAttribute(jsObject: object, name: Strings.orientationX)
        _orientationY = ReadWriteAttribute(jsObject: object, name: Strings.orientationY)
        _orientationZ = ReadWriteAttribute(jsObject: object, name: Strings.orientationZ)
        _refDistance = ReadWriteAttribute(jsObject: object, name: Strings.refDistance)
        _maxDistance = ReadWriteAttribute(jsObject: object, name: Strings.maxDistance)
        _rolloffFactor = ReadWriteAttribute(jsObject: object, name: Strings.rolloffFactor)
        _coneInnerAngle = ReadWriteAttribute(jsObject: object, name: Strings.coneInnerAngle)
        _coneOuterAngle = ReadWriteAttribute(jsObject: object, name: Strings.coneOuterAngle)
        _coneOuterGain = ReadWriteAttribute(jsObject: object, name: Strings.coneOuterGain)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var panningModel: PanningModelType

    @ReadWriteAttribute
    public var distanceModel: DistanceModelType

    @ReadWriteAttribute
    public var positionX: Float

    @ReadWriteAttribute
    public var positionY: Float

    @ReadWriteAttribute
    public var positionZ: Float

    @ReadWriteAttribute
    public var orientationX: Float

    @ReadWriteAttribute
    public var orientationY: Float

    @ReadWriteAttribute
    public var orientationZ: Float

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
}