// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BasePropertyIndexedKeyframe: BridgedDictionary {
    public convenience init(offset: nullable_Double_or_seq_of_nullable_Double, easing: String_or_seq_of_String, composite: CompositeOperationOrAuto_or_seq_of_CompositeOperationOrAuto) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.offset] = offset.jsValue()
        object[Strings.easing] = easing.jsValue()
        object[Strings.composite] = composite.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _offset = ReadWriteAttribute(jsObject: object, name: Strings.offset)
        _easing = ReadWriteAttribute(jsObject: object, name: Strings.easing)
        _composite = ReadWriteAttribute(jsObject: object, name: Strings.composite)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var offset: nullable_Double_or_seq_of_nullable_Double

    @ReadWriteAttribute
    public var easing: String_or_seq_of_String

    @ReadWriteAttribute
    public var composite: CompositeOperationOrAuto_or_seq_of_CompositeOperationOrAuto
}
