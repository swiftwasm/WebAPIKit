import JavaScriptKit

public class MutationEvent: Event {
    override public class var constructor: JSFunction { JSObject.global.MutationEvent.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _relatedNode = ReadonlyAttribute(jsObject: jsObject, name: "relatedNode")
        _prevValue = ReadonlyAttribute(jsObject: jsObject, name: "prevValue")
        _newValue = ReadonlyAttribute(jsObject: jsObject, name: "newValue")
        _attrName = ReadonlyAttribute(jsObject: jsObject, name: "attrName")
        _attrChange = ReadonlyAttribute(jsObject: jsObject, name: "attrChange")
        super.init(unsafelyWrapping: jsObject)
    }

    public static let MODIFICATION: Double = 1

    public static let ADDITION: Double = 2

    public static let REMOVAL: Double = 3

    @ReadonlyAttribute
    public var relatedNode: Node?

    @ReadonlyAttribute
    public var prevValue: String

    @ReadonlyAttribute
    public var newValue: String

    @ReadonlyAttribute
    public var attrName: String

    @ReadonlyAttribute
    public var attrChange: Double

    public func initMutationEvent(typeArg: String, bubblesArg: Bool? = nil, cancelableArg: Bool? = nil, relatedNodeArg: Node? = nil, prevValueArg: String? = nil, newValueArg: String? = nil, attrNameArg: String? = nil, attrChangeArg: Double? = nil) {
        _ = jsObject["initMutationEvent"]!(typeArg.jsValue(), bubblesArg?.jsValue() ?? .undefined, cancelableArg?.jsValue() ?? .undefined, relatedNodeArg?.jsValue() ?? .undefined, prevValueArg?.jsValue() ?? .undefined, newValueArg?.jsValue() ?? .undefined, attrNameArg?.jsValue() ?? .undefined, attrChangeArg?.jsValue() ?? .undefined)
    }
}
