// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class URLPatternComponentResult: BridgedDictionary {
    public convenience init(input: String, groups: [String: __UNSUPPORTED_UNION__]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.input] = input.jsValue()
        object[Strings.groups] = groups.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _input = ReadWriteAttribute(jsObject: object, name: Strings.input)
        _groups = ReadWriteAttribute(jsObject: object, name: Strings.groups)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var input: String

    @ReadWriteAttribute
    public var groups: [String: __UNSUPPORTED_UNION__]
}