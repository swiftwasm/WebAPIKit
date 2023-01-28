import ECMAScript
import JavaScriptKit

public extension HTMLFormControlsCollection {
    // removes `override` since the superclass returns a more constrained type `Element`
    @inlinable func namedItem(name: String) -> Element_or_RadioNodeList? {
        let this = jsObject
        return this[Strings.namedItem].function!(this: this, arguments: [_toJSValue(name)]).fromJSValue()!
    }
}

// copied out of generated file to rename `returnValue` to `returnValueAsString` so the types don’t collide
public class BeforeUnloadEvent: Event {
    @inlinable override public class var constructor: JSFunction? { JSObject.global[Strings.BeforeUnloadEvent].function }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _returnValue = ReadWriteAttribute(jsObject: jsObject, name: Strings.returnValue)
        super.init(unsafelyWrapping: jsObject)
    }

    @available(*, unavailable)
    override public var returnValue: Bool {
        get { !_returnValue.wrappedValue.isEmpty }
        set {}
    }

    @usableFromInline let _returnValue: ReadWriteAttribute<String>
    @inlinable public var returnValueAsString: String {
        get { _returnValue.wrappedValue }
        set { _returnValue.wrappedValue = newValue }
    }
}

extension Strings {
    @usableFromInline static let BeforeUnloadEvent: JSString = "BeforeUnloadEvent"
}
