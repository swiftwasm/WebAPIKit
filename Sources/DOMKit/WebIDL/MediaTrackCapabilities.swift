// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaTrackCapabilities: BridgedDictionary {
    public convenience init(whiteBalanceMode: [String], exposureMode: [String], focusMode: [String], exposureCompensation: MediaSettingsRange, exposureTime: MediaSettingsRange, colorTemperature: MediaSettingsRange, iso: MediaSettingsRange, brightness: MediaSettingsRange, contrast: MediaSettingsRange, saturation: MediaSettingsRange, sharpness: MediaSettingsRange, focusDistance: MediaSettingsRange, pan: MediaSettingsRange, tilt: MediaSettingsRange, zoom: MediaSettingsRange, torch: Bool, width: ULongRange, height: ULongRange, aspectRatio: DoubleRange, frameRate: DoubleRange, facingMode: [String], resizeMode: [String], sampleRate: ULongRange, sampleSize: ULongRange, echoCancellation: [Bool], autoGainControl: [Bool], noiseSuppression: [Bool], latency: DoubleRange, channelCount: ULongRange, deviceId: String, groupId: String, displaySurface: String, logicalSurface: Bool, cursor: [String]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.whiteBalanceMode] = whiteBalanceMode.jsValue
        object[Strings.exposureMode] = exposureMode.jsValue
        object[Strings.focusMode] = focusMode.jsValue
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
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _whiteBalanceMode = ReadWriteAttribute(jsObject: object, name: Strings.whiteBalanceMode)
        _exposureMode = ReadWriteAttribute(jsObject: object, name: Strings.exposureMode)
        _focusMode = ReadWriteAttribute(jsObject: object, name: Strings.focusMode)
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
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var whiteBalanceMode: [String]

    @ReadWriteAttribute
    public var exposureMode: [String]

    @ReadWriteAttribute
    public var focusMode: [String]

    @ReadWriteAttribute
    public var exposureCompensation: MediaSettingsRange

    @ReadWriteAttribute
    public var exposureTime: MediaSettingsRange

    @ReadWriteAttribute
    public var colorTemperature: MediaSettingsRange

    @ReadWriteAttribute
    public var iso: MediaSettingsRange

    @ReadWriteAttribute
    public var brightness: MediaSettingsRange

    @ReadWriteAttribute
    public var contrast: MediaSettingsRange

    @ReadWriteAttribute
    public var saturation: MediaSettingsRange

    @ReadWriteAttribute
    public var sharpness: MediaSettingsRange

    @ReadWriteAttribute
    public var focusDistance: MediaSettingsRange

    @ReadWriteAttribute
    public var pan: MediaSettingsRange

    @ReadWriteAttribute
    public var tilt: MediaSettingsRange

    @ReadWriteAttribute
    public var zoom: MediaSettingsRange

    @ReadWriteAttribute
    public var torch: Bool

    @ReadWriteAttribute
    public var width: ULongRange

    @ReadWriteAttribute
    public var height: ULongRange

    @ReadWriteAttribute
    public var aspectRatio: DoubleRange

    @ReadWriteAttribute
    public var frameRate: DoubleRange

    @ReadWriteAttribute
    public var facingMode: [String]

    @ReadWriteAttribute
    public var resizeMode: [String]

    @ReadWriteAttribute
    public var sampleRate: ULongRange

    @ReadWriteAttribute
    public var sampleSize: ULongRange

    @ReadWriteAttribute
    public var echoCancellation: [Bool]

    @ReadWriteAttribute
    public var autoGainControl: [Bool]

    @ReadWriteAttribute
    public var noiseSuppression: [Bool]

    @ReadWriteAttribute
    public var latency: DoubleRange

    @ReadWriteAttribute
    public var channelCount: ULongRange

    @ReadWriteAttribute
    public var deviceId: String

    @ReadWriteAttribute
    public var groupId: String

    @ReadWriteAttribute
    public var displaySurface: String

    @ReadWriteAttribute
    public var logicalSurface: Bool

    @ReadWriteAttribute
    public var cursor: [String]
}
