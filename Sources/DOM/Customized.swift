import Foundation

public extension HTMLFormControlsCollection {
    // removes `override` since the superclass returns a more constrained type `Element`
    @inlinable func namedItem(name: String) -> Element_or_RadioNodeList? {
        let this = jsObject
        return this[Strings.namedItem].function!(this: this, arguments: [_toJSValue(name)]).fromJSValue()!
    }
}
