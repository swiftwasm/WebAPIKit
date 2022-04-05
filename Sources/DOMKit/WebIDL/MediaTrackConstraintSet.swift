// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaTrackConstraintSet: BridgedDictionary {
    public convenience init(whiteBalanceMode: ConstrainDOMString, exposureMode: ConstrainDOMString, focusMode: ConstrainDOMString, pointsOfInterest: ConstrainPoint2D, exposureCompensation: ConstrainDouble, exposureTime: ConstrainDouble, colorTemperature: ConstrainDouble, iso: ConstrainDouble, brightness: ConstrainDouble, contrast: ConstrainDouble, saturation: ConstrainDouble, sharpness: ConstrainDouble, focusDistance: ConstrainDouble, pan: Bool_or_ConstrainDouble, tilt: Bool_or_ConstrainDouble, zoom: Bool_or_ConstrainDouble, torch: ConstrainBoolean, width: ConstrainULong, height: ConstrainULong, aspectRatio: ConstrainDouble, frameRate: ConstrainDouble, facingMode: ConstrainDOMString, resizeMode: ConstrainDOMString, sampleRate: ConstrainULong, sampleSize: ConstrainULong, echoCancellation: ConstrainBoolean, autoGainControl: ConstrainBoolean, noiseSuppression: ConstrainBoolean, latency: ConstrainDouble, channelCount: ConstrainULong, deviceId: ConstrainDOMString, groupId: ConstrainDOMString, displaySurface: ConstrainDOMString, logicalSurface: ConstrainBoolean, cursor: ConstrainDOMString, restrictOwnAudio: ConstrainBoolean, suppressLocalAudioPlayback: ConstrainBoolean) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.whiteBalanceMode] = whiteBalanceMode.jsValue
        object[Strings.exposureMode] = exposureMode.jsValue
        object[Strings.focusMode] = focusMode.jsValue
        object[Strings.pointsOfInterest] = pointsOfInterest.jsValue
        object[Strings.exposureCompensation] = exposureCompensation.jsValue
        object[Strings.exposureTime] = exposureTime.jsValue
        object[Strings.colorTemperature] = colorTemperature.jsValue
        object[Strings.iso] = iso.jsValue
        object[Strings.brightness] = brightness.jsValue
        object[Strings.contrast] = contrast.jsValue
        object[Strings.saturation] = saturation.jsValue
        object[Strings.sharpness] = sharpness.jsValue
        object[Strings.focusDistance] = focusDistance.jsValue
        object[Strings.pan] = pan.jsValue
        object[Strings.tilt] = tilt.jsValue
        object[Strings.zoom] = zoom.jsValue
        object[Strings.torch] = torch.jsValue
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
        object[Strings.displaySurface] = displaySurface.jsValue
        object[Strings.logicalSurface] = logicalSurface.jsValue
        object[Strings.cursor] = cursor.jsValue
        object[Strings.restrictOwnAudio] = restrictOwnAudio.jsValue
        object[Strings.suppressLocalAudioPlayback] = suppressLocalAudioPlayback.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _whiteBalanceMode = ReadWriteAttribute(jsObject: object, name: Strings.whiteBalanceMode)
        _exposureMode = ReadWriteAttribute(jsObject: object, name: Strings.exposureMode)
        _focusMode = ReadWriteAttribute(jsObject: object, name: Strings.focusMode)
        _pointsOfInterest = ReadWriteAttribute(jsObject: object, name: Strings.pointsOfInterest)
        _exposureCompensation = ReadWriteAttribute(jsObject: object, name: Strings.exposureCompensation)
        _exposureTime = ReadWriteAttribute(jsObject: object, name: Strings.exposureTime)
        _colorTemperature = ReadWriteAttribute(jsObject: object, name: Strings.colorTemperature)
        _iso = ReadWriteAttribute(jsObject: object, name: Strings.iso)
        _brightness = ReadWriteAttribute(jsObject: object, name: Strings.brightness)
        _contrast = ReadWriteAttribute(jsObject: object, name: Strings.contrast)
        _saturation = ReadWriteAttribute(jsObject: object, name: Strings.saturation)
        _sharpness = ReadWriteAttribute(jsObject: object, name: Strings.sharpness)
        _focusDistance = ReadWriteAttribute(jsObject: object, name: Strings.focusDistance)
        _pan = ReadWriteAttribute(jsObject: object, name: Strings.pan)
        _tilt = ReadWriteAttribute(jsObject: object, name: Strings.tilt)
        _zoom = ReadWriteAttribute(jsObject: object, name: Strings.zoom)
        _torch = ReadWriteAttribute(jsObject: object, name: Strings.torch)
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
        _displaySurface = ReadWriteAttribute(jsObject: object, name: Strings.displaySurface)
        _logicalSurface = ReadWriteAttribute(jsObject: object, name: Strings.logicalSurface)
        _cursor = ReadWriteAttribute(jsObject: object, name: Strings.cursor)
        _restrictOwnAudio = ReadWriteAttribute(jsObject: object, name: Strings.restrictOwnAudio)
        _suppressLocalAudioPlayback = ReadWriteAttribute(jsObject: object, name: Strings.suppressLocalAudioPlayback)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var whiteBalanceMode: ConstrainDOMString

    @ReadWriteAttribute
    public var exposureMode: ConstrainDOMString

    @ReadWriteAttribute
    public var focusMode: ConstrainDOMString

    @ReadWriteAttribute
    public var pointsOfInterest: ConstrainPoint2D

    @ReadWriteAttribute
    public var exposureCompensation: ConstrainDouble

    @ReadWriteAttribute
    public var exposureTime: ConstrainDouble

    @ReadWriteAttribute
    public var colorTemperature: ConstrainDouble

    @ReadWriteAttribute
    public var iso: ConstrainDouble

    @ReadWriteAttribute
    public var brightness: ConstrainDouble

    @ReadWriteAttribute
    public var contrast: ConstrainDouble

    @ReadWriteAttribute
    public var saturation: ConstrainDouble

    @ReadWriteAttribute
    public var sharpness: ConstrainDouble

    @ReadWriteAttribute
    public var focusDistance: ConstrainDouble

    @ReadWriteAttribute
    public var pan: Bool_or_ConstrainDouble

    @ReadWriteAttribute
    public var tilt: Bool_or_ConstrainDouble

    @ReadWriteAttribute
    public var zoom: Bool_or_ConstrainDouble

    @ReadWriteAttribute
    public var torch: ConstrainBoolean

    @ReadWriteAttribute
    public var width: ConstrainULong

    @ReadWriteAttribute
    public var height: ConstrainULong

    @ReadWriteAttribute
    public var aspectRatio: ConstrainDouble

    @ReadWriteAttribute
    public var frameRate: ConstrainDouble

    @ReadWriteAttribute
    public var facingMode: ConstrainDOMString

    @ReadWriteAttribute
    public var resizeMode: ConstrainDOMString

    @ReadWriteAttribute
    public var sampleRate: ConstrainULong

    @ReadWriteAttribute
    public var sampleSize: ConstrainULong

    @ReadWriteAttribute
    public var echoCancellation: ConstrainBoolean

    @ReadWriteAttribute
    public var autoGainControl: ConstrainBoolean

    @ReadWriteAttribute
    public var noiseSuppression: ConstrainBoolean

    @ReadWriteAttribute
    public var latency: ConstrainDouble

    @ReadWriteAttribute
    public var channelCount: ConstrainULong

    @ReadWriteAttribute
    public var deviceId: ConstrainDOMString

    @ReadWriteAttribute
    public var groupId: ConstrainDOMString

    @ReadWriteAttribute
    public var displaySurface: ConstrainDOMString

    @ReadWriteAttribute
    public var logicalSurface: ConstrainBoolean

    @ReadWriteAttribute
    public var cursor: ConstrainDOMString

    @ReadWriteAttribute
    public var restrictOwnAudio: ConstrainBoolean

    @ReadWriteAttribute
    public var suppressLocalAudioPlayback: ConstrainBoolean
}
