import ECMAScript
import JavaScriptKit

// copied out of generated file to work around issue with `colorSpace` being more permissive than in superclass
public class CSSColor: CSSColorValue {
    @inlinable override public class var constructor: JSFunction? { JSObject.global[Strings.CSSColor].function }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _colorSpace = ReadWriteAttribute(jsObject: jsObject, name: Strings.colorSpace)
        _channels = ReadWriteAttribute(jsObject: jsObject, name: Strings.channels)
        _alpha = ReadWriteAttribute(jsObject: jsObject, name: Strings.alpha)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(colorSpace: CSSKeywordish, channels: [CSSColorPercent], alpha: CSSNumberish? = nil) {
        self.init(unsafelyWrapping: Self.constructor!.new(arguments: [_toJSValue(colorSpace), _toJSValue(channels), _toJSValue(alpha)]))
    }

    @available(*, unavailable)
    override public var colorSpace: CSSKeywordValue {
        get { colorSpaceOrString.cssKeywordValue! }
        set { colorSpaceOrString = .cssKeywordValue(newValue) }
    }

    @usableFromInline let _colorSpace: ReadWriteAttribute<CSSKeywordish>
    @inlinable public var colorSpaceOrString: CSSKeywordish {
        get { _colorSpace.wrappedValue }
        set { _colorSpace.wrappedValue = newValue }
    }

    @ReadWriteAttribute
    public var channels: [CSSColorPercent]

    @ReadWriteAttribute
    public var alpha: CSSNumberish
}

extension Strings {
    @usableFromInline static let CSSColor: JSString = "CSSColor"
    @usableFromInline static let channels: JSString = "channels"
}
