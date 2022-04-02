// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BoxQuadOptions: BridgedDictionary {
    public convenience init(box: CSSBoxType, relativeTo: GeometryNode) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.box] = box.jsValue()
        object[Strings.relativeTo] = relativeTo.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _box = ReadWriteAttribute(jsObject: object, name: Strings.box)
        _relativeTo = ReadWriteAttribute(jsObject: object, name: Strings.relativeTo)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var box: CSSBoxType

    @ReadWriteAttribute
    public var relativeTo: GeometryNode
}