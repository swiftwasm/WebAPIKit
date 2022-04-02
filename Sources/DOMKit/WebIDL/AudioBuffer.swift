// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioBuffer: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.AudioBuffer].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _sampleRate = ReadonlyAttribute(jsObject: jsObject, name: Strings.sampleRate)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _duration = ReadonlyAttribute(jsObject: jsObject, name: Strings.duration)
        _numberOfChannels = ReadonlyAttribute(jsObject: jsObject, name: Strings.numberOfChannels)
        self.jsObject = jsObject
    }

    public convenience init(options: AudioBufferOptions) {
        self.init(unsafelyWrapping: Self.constructor.new(options.jsValue()))
    }

    @ReadonlyAttribute
    public var sampleRate: Float

    @ReadonlyAttribute
    public var length: UInt32

    @ReadonlyAttribute
    public var duration: Double

    @ReadonlyAttribute
    public var numberOfChannels: UInt32

    public func getChannelData(channel: UInt32) -> Float32Array {
        jsObject[Strings.getChannelData]!(channel.jsValue()).fromJSValue()!
    }

    public func copyFromChannel(destination: Float32Array, channelNumber: UInt32, bufferOffset: UInt32? = nil) {
        _ = jsObject[Strings.copyFromChannel]!(destination.jsValue(), channelNumber.jsValue(), bufferOffset?.jsValue() ?? .undefined)
    }

    public func copyToChannel(source: Float32Array, channelNumber: UInt32, bufferOffset: UInt32? = nil) {
        _ = jsObject[Strings.copyToChannel]!(source.jsValue(), channelNumber.jsValue(), bufferOffset?.jsValue() ?? .undefined)
    }
}
