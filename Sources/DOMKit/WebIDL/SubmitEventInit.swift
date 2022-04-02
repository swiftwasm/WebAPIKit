// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SubmitEventInit: BridgedDictionary {
    public convenience init(submitter: HTMLElement?) {
        let object = JSObject.global.Object.function!.new()
        object[Strings.submitter] = submitter.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _submitter = ReadWriteAttribute(jsObject: object, name: Strings.submitter)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var submitter: HTMLElement?
}
