// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoTrackList: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.VideoTrackList].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _selectedIndex = ReadonlyAttribute(jsObject: jsObject, name: Strings.selectedIndex)
        _onchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onchange)
        _onaddtrack = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onaddtrack)
        _onremovetrack = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onremovetrack)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var length: UInt32

    @inlinable public subscript(key: Int) -> VideoTrack {
        jsObject[key].fromJSValue()!
    }

    @inlinable public func getTrackById(id: String) -> VideoTrack? {
        let this = jsObject
        return this[Strings.getTrackById].function!(this: this, arguments: [id.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var selectedIndex: Int32

    @ClosureAttribute1Optional
    public var onchange: EventHandler

    @ClosureAttribute1Optional
    public var onaddtrack: EventHandler

    @ClosureAttribute1Optional
    public var onremovetrack: EventHandler
}
