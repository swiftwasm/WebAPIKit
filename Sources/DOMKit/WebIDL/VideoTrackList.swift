// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoTrackList: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.VideoTrackList.function! }

    private enum Keys {
        static let getTrackById: JSString = "getTrackById"
        static let length: JSString = "length"
        static let onaddtrack: JSString = "onaddtrack"
        static let onchange: JSString = "onchange"
        static let onremovetrack: JSString = "onremovetrack"
        static let selectedIndex: JSString = "selectedIndex"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        _selectedIndex = ReadonlyAttribute(jsObject: jsObject, name: Keys.selectedIndex)
        _onchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onchange)
        _onaddtrack = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onaddtrack)
        _onremovetrack = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onremovetrack)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: Int) -> VideoTrack {
        jsObject[key].fromJSValue()!
    }

    public func getTrackById(id: String) -> VideoTrack? {
        jsObject[Keys.getTrackById]!(id.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var selectedIndex: Int32

    @ClosureAttribute.Optional1
    public var onchange: EventHandler

    @ClosureAttribute.Optional1
    public var onaddtrack: EventHandler

    @ClosureAttribute.Optional1
    public var onremovetrack: EventHandler
}