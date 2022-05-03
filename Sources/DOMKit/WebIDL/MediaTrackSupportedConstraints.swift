// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaTrackSupportedConstraints: BridgedDictionary {
    public convenience init(width: Bool, height: Bool, aspectRatio: Bool, frameRate: Bool, facingMode: Bool, resizeMode: Bool, sampleRate: Bool, sampleSize: Bool, echoCancellation: Bool, autoGainControl: Bool, noiseSuppression: Bool, latency: Bool, channelCount: Bool, deviceId: Bool, groupId: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.width] = width.jsValue
        object[Strings.height] = height.jsValue
        object[Strings.aspectRatio] = aspectRatio.jsValue
        object[Strings.frameRate] = frameRate.jsValue
        object[Strings.facingMode] = facingMode.jsValue
        object[Strings.resizeMode] = resizeMode.jsValue
        object[Strings.sampleRate] = sampleRate.jsValue
        object[Strings.sampleSize] = sampleSize.jsValue
        object[Strings.echoCancellation] = echoCancellation.jsValue
        object[Strings.autoGainControl] = autoGainControl.jsValue
        object[Strings.noiseSuppression] = noiseSuppression.jsValue
        object[Strings.latency] = latency.jsValue
        object[Strings.channelCount] = channelCount.jsValue
        object[Strings.deviceId] = deviceId.jsValue
        object[Strings.groupId] = groupId.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _width = ReadWriteAttribute(jsObject: object, name: Strings.width)
        _height = ReadWriteAttribute(jsObject: object, name: Strings.height)
        _aspectRatio = ReadWriteAttribute(jsObject: object, name: Strings.aspectRatio)
        _frameRate = ReadWriteAttribute(jsObject: object, name: Strings.frameRate)
        _facingMode = ReadWriteAttribute(jsObject: object, name: Strings.facingMode)
        _resizeMode = ReadWriteAttribute(jsObject: object, name: Strings.resizeMode)
        _sampleRate = ReadWriteAttribute(jsObject: object, name: Strings.sampleRate)
        _sampleSize = ReadWriteAttribute(jsObject: object, name: Strings.sampleSize)
        _echoCancellation = ReadWriteAttribute(jsObject: object, name: Strings.echoCancellation)
        _autoGainControl = ReadWriteAttribute(jsObject: object, name: Strings.autoGainControl)
        _noiseSuppression = ReadWriteAttribute(jsObject: object, name: Strings.noiseSuppression)
        _latency = ReadWriteAttribute(jsObject: object, name: Strings.latency)
        _channelCount = ReadWriteAttribute(jsObject: object, name: Strings.channelCount)
        _deviceId = ReadWriteAttribute(jsObject: object, name: Strings.deviceId)
        _groupId = ReadWriteAttribute(jsObject: object, name: Strings.groupId)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var width: Bool

    @ReadWriteAttribute
    public var height: Bool

    @ReadWriteAttribute
    public var aspectRatio: Bool

    @ReadWriteAttribute
    public var frameRate: Bool

    @ReadWriteAttribute
    public var facingMode: Bool

    @ReadWriteAttribute
    public var resizeMode: Bool

    @ReadWriteAttribute
    public var sampleRate: Bool

    @ReadWriteAttribute
    public var sampleSize: Bool

    @ReadWriteAttribute
    public var echoCancellation: Bool

    @ReadWriteAttribute
    public var autoGainControl: Bool

    @ReadWriteAttribute
    public var noiseSuppression: Bool

    @ReadWriteAttribute
    public var latency: Bool

    @ReadWriteAttribute
    public var channelCount: Bool

    @ReadWriteAttribute
    public var deviceId: Bool

    @ReadWriteAttribute
    public var groupId: Bool
}