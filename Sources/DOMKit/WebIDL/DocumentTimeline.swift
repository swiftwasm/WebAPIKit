// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DocumentTimeline: AnimationTimeline {
    override public class var constructor: JSFunction { JSObject.global[Strings.DocumentTimeline].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(options: DocumentTimelineOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(options?.jsValue() ?? .undefined))
    }
}