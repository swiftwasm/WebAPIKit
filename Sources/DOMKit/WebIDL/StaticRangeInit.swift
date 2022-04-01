// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StaticRangeInit: BridgedDictionary {
    private enum Keys {
        static let endContainer: JSString = "endContainer"
        static let endOffset: JSString = "endOffset"
        static let startContainer: JSString = "startContainer"
        static let startOffset: JSString = "startOffset"
    }

    public convenience init(startContainer: Node, startOffset: UInt32, endContainer: Node, endOffset: UInt32) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.startContainer] = startContainer.jsValue()
        object[Keys.startOffset] = startOffset.jsValue()
        object[Keys.endContainer] = endContainer.jsValue()
        object[Keys.endOffset] = endOffset.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _startContainer = ReadWriteAttribute(jsObject: object, name: Keys.startContainer)
        _startOffset = ReadWriteAttribute(jsObject: object, name: Keys.startOffset)
        _endContainer = ReadWriteAttribute(jsObject: object, name: Keys.endContainer)
        _endOffset = ReadWriteAttribute(jsObject: object, name: Keys.endOffset)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var startContainer: Node

    @ReadWriteAttribute
    public var startOffset: UInt32

    @ReadWriteAttribute
    public var endContainer: Node

    @ReadWriteAttribute
    public var endOffset: UInt32
}
