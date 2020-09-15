
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol DocumentAndElementEventHandlers: JSBridgedClass {}

public extension DocumentAndElementEventHandlers {
    var oncopy: EventHandler {
        get {
            guard let function = jsObject.oncopy.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.oncopy = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.oncopy = .null
            }
        }
    }

    var oncut: EventHandler {
        get {
            guard let function = jsObject.oncut.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.oncut = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.oncut = .null
            }
        }
    }

    var onpaste: EventHandler {
        get {
            guard let function = jsObject.onpaste.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onpaste = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onpaste = .null
            }
        }
    }
}
