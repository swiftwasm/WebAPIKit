// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MutationEvent: Event {
    override public class var constructor: JSFunction { JSObject.global.MutationEvent.function! }

    private enum Keys {
        static let attrName: JSString = "attrName"
        static let attrChange: JSString = "attrChange"
        static let newValue: JSString = "newValue"
        static let ADDITION: JSString = "ADDITION"
        static let initMutationEvent: JSString = "initMutationEvent"
        static let prevValue: JSString = "prevValue"
        static let MODIFICATION: JSString = "MODIFICATION"
        static let REMOVAL: JSString = "REMOVAL"
        static let relatedNode: JSString = "relatedNode"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _relatedNode = ReadonlyAttribute(jsObject: jsObject, name: Keys.relatedNode)
        _prevValue = ReadonlyAttribute(jsObject: jsObject, name: Keys.prevValue)
        _newValue = ReadonlyAttribute(jsObject: jsObject, name: Keys.newValue)
        _attrName = ReadonlyAttribute(jsObject: jsObject, name: Keys.attrName)
        _attrChange = ReadonlyAttribute(jsObject: jsObject, name: Keys.attrChange)
        super.init(unsafelyWrapping: jsObject)
    }

    public static let MODIFICATION: UInt16 = 1

    public static let ADDITION: UInt16 = 2

    public static let REMOVAL: UInt16 = 3

    @ReadonlyAttribute
    public var relatedNode: Node?

    @ReadonlyAttribute
    public var prevValue: String

    @ReadonlyAttribute
    public var newValue: String

    @ReadonlyAttribute
    public var attrName: String

    @ReadonlyAttribute
    public var attrChange: UInt16

    public func initMutationEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, relatedNodeArg: Node? = nil, prevValueArg: String? = nil, newValueArg: String? = nil, attrNameArg: String? = nil, attrChangeArg: UInt16? = nil) {
        let _arg0 = typeArg.jsValue()
        let _arg1 = bubblesArg?.jsValue() ?? .undefined
        let _arg2 = cancelableArg?.jsValue() ?? .undefined
        let _arg3 = relatedNodeArg?.jsValue() ?? .undefined
        let _arg4 = prevValueArg?.jsValue() ?? .undefined
        let _arg5 = newValueArg?.jsValue() ?? .undefined
        let _arg6 = attrNameArg?.jsValue() ?? .undefined
        let _arg7 = attrChangeArg?.jsValue() ?? .undefined
        _ = jsObject[Keys.initMutationEvent]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7)
    }
}
