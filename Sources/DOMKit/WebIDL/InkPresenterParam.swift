// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class InkPresenterParam: BridgedDictionary {
    public convenience init(presentationArea: Element?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.presentationArea] = presentationArea.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _presentationArea = ReadWriteAttribute(jsObject: object, name: Strings.presentationArea)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var presentationArea: Element?
}