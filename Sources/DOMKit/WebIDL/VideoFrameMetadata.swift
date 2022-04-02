// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoFrameMetadata: BridgedDictionary {
    public convenience init(presentationTime: DOMHighResTimeStamp, expectedDisplayTime: DOMHighResTimeStamp, width: UInt32, height: UInt32, mediaTime: Double, presentedFrames: UInt32, processingDuration: Double, captureTime: DOMHighResTimeStamp, receiveTime: DOMHighResTimeStamp, rtpTimestamp: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.presentationTime] = presentationTime.jsValue()
        object[Strings.expectedDisplayTime] = expectedDisplayTime.jsValue()
        object[Strings.width] = width.jsValue()
        object[Strings.height] = height.jsValue()
        object[Strings.mediaTime] = mediaTime.jsValue()
        object[Strings.presentedFrames] = presentedFrames.jsValue()
        object[Strings.processingDuration] = processingDuration.jsValue()
        object[Strings.captureTime] = captureTime.jsValue()
        object[Strings.receiveTime] = receiveTime.jsValue()
        object[Strings.rtpTimestamp] = rtpTimestamp.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _presentationTime = ReadWriteAttribute(jsObject: object, name: Strings.presentationTime)
        _expectedDisplayTime = ReadWriteAttribute(jsObject: object, name: Strings.expectedDisplayTime)
        _width = ReadWriteAttribute(jsObject: object, name: Strings.width)
        _height = ReadWriteAttribute(jsObject: object, name: Strings.height)
        _mediaTime = ReadWriteAttribute(jsObject: object, name: Strings.mediaTime)
        _presentedFrames = ReadWriteAttribute(jsObject: object, name: Strings.presentedFrames)
        _processingDuration = ReadWriteAttribute(jsObject: object, name: Strings.processingDuration)
        _captureTime = ReadWriteAttribute(jsObject: object, name: Strings.captureTime)
        _receiveTime = ReadWriteAttribute(jsObject: object, name: Strings.receiveTime)
        _rtpTimestamp = ReadWriteAttribute(jsObject: object, name: Strings.rtpTimestamp)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var presentationTime: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var expectedDisplayTime: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var width: UInt32

    @ReadWriteAttribute
    public var height: UInt32

    @ReadWriteAttribute
    public var mediaTime: Double

    @ReadWriteAttribute
    public var presentedFrames: UInt32

    @ReadWriteAttribute
    public var processingDuration: Double

    @ReadWriteAttribute
    public var captureTime: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var receiveTime: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var rtpTimestamp: UInt32
}
