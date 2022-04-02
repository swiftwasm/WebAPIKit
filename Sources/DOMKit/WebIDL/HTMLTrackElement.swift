// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTrackElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLTrackElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _kind = ReadWriteAttribute(jsObject: jsObject, name: Strings.kind)
        _src = ReadWriteAttribute(jsObject: jsObject, name: Strings.src)
        _srclang = ReadWriteAttribute(jsObject: jsObject, name: Strings.srclang)
        _label = ReadWriteAttribute(jsObject: jsObject, name: Strings.label)
        _default = ReadWriteAttribute(jsObject: jsObject, name: Strings.default)
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: Strings.readyState)
        _track = ReadonlyAttribute(jsObject: jsObject, name: Strings.track)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var kind: String

    @ReadWriteAttribute
    public var src: String

    @ReadWriteAttribute
    public var srclang: String

    @ReadWriteAttribute
    public var label: String

    @ReadWriteAttribute
    public var `default`: Bool

    public static let NONE: UInt16 = 0

    public static let LOADING: UInt16 = 1

    public static let LOADED: UInt16 = 2

    public static let ERROR: UInt16 = 3

    @ReadonlyAttribute
    public var readyState: UInt16

    @ReadonlyAttribute
    public var track: TextTrack
}
