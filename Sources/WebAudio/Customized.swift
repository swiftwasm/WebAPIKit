import ECMAScript

public extension AudioBufferSourceNode {
    // removes `override` since the superclass function has fewer parameters
    @inlinable func start(when: Double? = nil, offset: Double? = nil, duration: Double? = nil) {
        let this = jsObject
        _ = this[Strings.start].function!(this: this, arguments: [_toJSValue(when), _toJSValue(offset), _toJSValue(duration)])
    }
}
