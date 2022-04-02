// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoTrack: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.VideoTrack.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _kind = ReadonlyAttribute(jsObject: jsObject, name: Strings.kind)
        _label = ReadonlyAttribute(jsObject: jsObject, name: Strings.label)
        _language = ReadonlyAttribute(jsObject: jsObject, name: Strings.language)
        _selected = ReadWriteAttribute(jsObject: jsObject, name: Strings.selected)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var kind: String

    @ReadonlyAttribute
    public var label: String

    @ReadonlyAttribute
    public var language: String

    @ReadWriteAttribute
    public var selected: Bool
}
