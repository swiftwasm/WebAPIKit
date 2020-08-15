
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol DocumentAndElementEventHandlers: JSBridgedClass {}

public extension DocumentAndElementEventHandlers {
    var oncopy: EventHandler {
        get {
            guard let function = objectRef.oncopy.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.oncopy = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.oncopy = .null
            }
        }
    }

    var oncut: EventHandler {
        get {
            guard let function = objectRef.oncut.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.oncut = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.oncut = .null
            }
        }
    }

    var onpaste: EventHandler {
        get {
            guard let function = objectRef.onpaste.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onpaste = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onpaste = .null
            }
        }
    }
}
