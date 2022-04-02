// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaTrackConstraints: BridgedDictionary {
    public convenience init(advanced: [MediaTrackConstraintSet]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.advanced] = advanced.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _advanced = ReadWriteAttribute(jsObject: object, name: Strings.advanced)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var advanced: [MediaTrackConstraintSet]
}