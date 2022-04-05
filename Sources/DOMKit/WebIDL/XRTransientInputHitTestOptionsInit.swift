// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRTransientInputHitTestOptionsInit: BridgedDictionary {
    public convenience init(profile: String, entityTypes: [XRHitTestTrackableType], offsetRay: XRRay) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.profile] = profile.jsValue
        object[Strings.entityTypes] = entityTypes.jsValue
        object[Strings.offsetRay] = offsetRay.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _profile = ReadWriteAttribute(jsObject: object, name: Strings.profile)
        _entityTypes = ReadWriteAttribute(jsObject: object, name: Strings.entityTypes)
        _offsetRay = ReadWriteAttribute(jsObject: object, name: Strings.offsetRay)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var profile: String

    @ReadWriteAttribute
    public var entityTypes: [XRHitTestTrackableType]

    @ReadWriteAttribute
    public var offsetRay: XRRay
}
