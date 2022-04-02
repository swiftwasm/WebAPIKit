// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TaskController: AbortController {
    override public class var constructor: JSFunction { JSObject.global[Strings.TaskController].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(init: TaskControllerInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(`init`?.jsValue() ?? .undefined))
    }

    public func setPriority(priority: TaskPriority) {
        let this = jsObject
        _ = this[Strings.setPriority].function!(this: this, arguments: [priority.jsValue()])
    }
}
