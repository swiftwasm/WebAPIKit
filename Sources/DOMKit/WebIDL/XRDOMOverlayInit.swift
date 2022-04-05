// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRDOMOverlayInit: BridgedDictionary {
    public convenience init(root: Element) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.root] = root.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _root = ReadWriteAttribute(jsObject: object, name: Strings.root)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var root: Element
}
