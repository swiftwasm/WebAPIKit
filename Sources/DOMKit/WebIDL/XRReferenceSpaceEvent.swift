// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRReferenceSpaceEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.XRReferenceSpaceEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _referenceSpace = ReadonlyAttribute(jsObject: jsObject, name: Strings.referenceSpace)
        _transform = ReadonlyAttribute(jsObject: jsObject, name: Strings.transform)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: XRReferenceSpaceEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var referenceSpace: XRReferenceSpace

    @ReadonlyAttribute
    public var transform: XRRigidTransform?
}
