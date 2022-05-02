// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioData: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.AudioData].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _format = ReadonlyAttribute(jsObject: jsObject, name: Strings.format)
        _sampleRate = ReadonlyAttribute(jsObject: jsObject, name: Strings.sampleRate)
        _numberOfFrames = ReadonlyAttribute(jsObject: jsObject, name: Strings.numberOfFrames)
        _numberOfChannels = ReadonlyAttribute(jsObject: jsObject, name: Strings.numberOfChannels)
        _duration = ReadonlyAttribute(jsObject: jsObject, name: Strings.duration)
        _timestamp = ReadonlyAttribute(jsObject: jsObject, name: Strings.timestamp)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(init: AudioDataInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [`init`.jsValue]))
    }

    @ReadonlyAttribute
    public var format: AudioSampleFormat?

    @ReadonlyAttribute
    public var sampleRate: Float

    @ReadonlyAttribute
    public var numberOfFrames: UInt32

    @ReadonlyAttribute
    public var numberOfChannels: UInt32

    @ReadonlyAttribute
    public var duration: UInt64

    @ReadonlyAttribute
    public var timestamp: Int64

    @inlinable public func allocationSize(options: AudioDataCopyToOptions) -> UInt32 {
        let this = jsObject
        return this[Strings.allocationSize].function!(this: this, arguments: [options.jsValue]).fromJSValue()!
    }

    @inlinable public func copyTo(destination: BufferSource, options: AudioDataCopyToOptions) {
        let this = jsObject
        _ = this[Strings.copyTo].function!(this: this, arguments: [destination.jsValue, options.jsValue])
    }

    @inlinable public func clone() -> Self {
        let this = jsObject
        return this[Strings.clone].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func close() {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [])
    }
}