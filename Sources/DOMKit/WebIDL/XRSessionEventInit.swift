// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRSessionEventInit: BridgedDictionary {
    public convenience init(session: XRSession) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.session] = session.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _session = ReadWriteAttribute(jsObject: object, name: Strings.session)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var session: XRSession
}