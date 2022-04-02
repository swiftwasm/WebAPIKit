// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoFrameBufferInit: BridgedDictionary {
    public convenience init(format: VideoPixelFormat, codedWidth: UInt32, codedHeight: UInt32, timestamp: Int64, duration: UInt64, layout: [PlaneLayout], visibleRect: DOMRectInit, displayWidth: UInt32, displayHeight: UInt32, colorSpace: VideoColorSpaceInit) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.format] = format.jsValue()
        object[Strings.codedWidth] = codedWidth.jsValue()
        object[Strings.codedHeight] = codedHeight.jsValue()
        object[Strings.timestamp] = timestamp.jsValue()
        object[Strings.duration] = duration.jsValue()
        object[Strings.layout] = layout.jsValue()
        object[Strings.visibleRect] = visibleRect.jsValue()
        object[Strings.displayWidth] = displayWidth.jsValue()
        object[Strings.displayHeight] = displayHeight.jsValue()
        object[Strings.colorSpace] = colorSpace.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _format = ReadWriteAttribute(jsObject: object, name: Strings.format)
        _codedWidth = ReadWriteAttribute(jsObject: object, name: Strings.codedWidth)
        _codedHeight = ReadWriteAttribute(jsObject: object, name: Strings.codedHeight)
        _timestamp = ReadWriteAttribute(jsObject: object, name: Strings.timestamp)
        _duration = ReadWriteAttribute(jsObject: object, name: Strings.duration)
        _layout = ReadWriteAttribute(jsObject: object, name: Strings.layout)
        _visibleRect = ReadWriteAttribute(jsObject: object, name: Strings.visibleRect)
        _displayWidth = ReadWriteAttribute(jsObject: object, name: Strings.displayWidth)
        _displayHeight = ReadWriteAttribute(jsObject: object, name: Strings.displayHeight)
        _colorSpace = ReadWriteAttribute(jsObject: object, name: Strings.colorSpace)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var format: VideoPixelFormat

    @ReadWriteAttribute
    public var codedWidth: UInt32

    @ReadWriteAttribute
    public var codedHeight: UInt32

    @ReadWriteAttribute
    public var timestamp: Int64

    @ReadWriteAttribute
    public var duration: UInt64

    @ReadWriteAttribute
    public var layout: [PlaneLayout]

    @ReadWriteAttribute
    public var visibleRect: DOMRectInit

    @ReadWriteAttribute
    public var displayWidth: UInt32

    @ReadWriteAttribute
    public var displayHeight: UInt32

    @ReadWriteAttribute
    public var colorSpace: VideoColorSpaceInit
}
