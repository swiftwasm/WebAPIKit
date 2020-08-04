
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol DocumentAndElementEventHandlers: JSAbstractBridgedType {}

public extension DocumentAndElementEventHandlers {
    var oncopy: EventHandler {
        get {
            guard let function = objectRef.oncopy.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oncopy = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oncut = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onpaste = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onpaste = .null
            }
        }
    }
}
