// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ChannelMergerNode: AudioNode {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.ChannelMergerNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(context: BaseAudioContext, options: ChannelMergerOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [context.jsValue(), options?.jsValue() ?? .undefined]))
    }
}
