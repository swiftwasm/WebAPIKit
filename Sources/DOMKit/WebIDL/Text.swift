// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Text: CharacterData, GeometryUtils, Slottable {
    override public class var constructor: JSFunction { JSObject.global[Strings.Text].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _wholeText = ReadonlyAttribute(jsObject: jsObject, name: Strings.wholeText)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(data: String? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(data?.jsValue() ?? .undefined))
    }

    public func splitText(offset: UInt32) -> Self {
        jsObject[Strings.splitText]!(offset.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var wholeText: String
}
