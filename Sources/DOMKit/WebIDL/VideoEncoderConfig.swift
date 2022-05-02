// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoEncoderConfig: BridgedDictionary {
    public typealias BitrateMode = String

    public convenience init(codec: String, width: UInt32, height: UInt32, displayWidth: UInt32, displayHeight: UInt32, bitrate: UInt64, framerate: Double, hardwareAcceleration: HardwareAcceleration, alpha: AlphaOption, scalabilityMode: String, bitrateMode: BitrateMode, latencyMode: LatencyMode) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.codec] = codec.jsValue
        object[Strings.width] = width.jsValue
        object[Strings.height] = height.jsValue
        object[Strings.displayWidth] = displayWidth.jsValue
        object[Strings.displayHeight] = displayHeight.jsValue
        object[Strings.bitrate] = bitrate.jsValue
        object[Strings.framerate] = framerate.jsValue
        object[Strings.hardwareAcceleration] = hardwareAcceleration.jsValue
        object[Strings.alpha] = alpha.jsValue
        object[Strings.scalabilityMode] = scalabilityMode.jsValue
        object[Strings.bitrateMode] = bitrateMode.jsValue
        object[Strings.latencyMode] = latencyMode.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _codec = ReadWriteAttribute(jsObject: object, name: Strings.codec)
        _width = ReadWriteAttribute(jsObject: object, name: Strings.width)
        _height = ReadWriteAttribute(jsObject: object, name: Strings.height)
        _displayWidth = ReadWriteAttribute(jsObject: object, name: Strings.displayWidth)
        _displayHeight = ReadWriteAttribute(jsObject: object, name: Strings.displayHeight)
        _bitrate = ReadWriteAttribute(jsObject: object, name: Strings.bitrate)
        _framerate = ReadWriteAttribute(jsObject: object, name: Strings.framerate)
        _hardwareAcceleration = ReadWriteAttribute(jsObject: object, name: Strings.hardwareAcceleration)
        _alpha = ReadWriteAttribute(jsObject: object, name: Strings.alpha)
        _scalabilityMode = ReadWriteAttribute(jsObject: object, name: Strings.scalabilityMode)
        _bitrateMode = ReadWriteAttribute(jsObject: object, name: Strings.bitrateMode)
        _latencyMode = ReadWriteAttribute(jsObject: object, name: Strings.latencyMode)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var codec: String

    @ReadWriteAttribute
    public var width: UInt32

    @ReadWriteAttribute
    public var height: UInt32

    @ReadWriteAttribute
    public var displayWidth: UInt32

    @ReadWriteAttribute
    public var displayHeight: UInt32

    @ReadWriteAttribute
    public var bitrate: UInt64

    @ReadWriteAttribute
    public var framerate: Double

    @ReadWriteAttribute
    public var hardwareAcceleration: HardwareAcceleration

    @ReadWriteAttribute
    public var alpha: AlphaOption

    @ReadWriteAttribute
    public var scalabilityMode: String

    @ReadWriteAttribute
    public var bitrateMode: BitrateMode

    @ReadWriteAttribute
    public var latencyMode: LatencyMode
}
