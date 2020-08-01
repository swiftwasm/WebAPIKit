
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol DocumentAndElementEventHandlers: JSBridgedType {}

public extension DocumentAndElementEventHandlers {
    var oncopy: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oncopy"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oncopy"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oncopy"] = .null
            }
        }
    }

    var oncut: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oncut"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oncut"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oncut"] = .null
            }
        }
    }

    var onpaste: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onpaste"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onpaste"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onpaste"] = .null
            }
        }
    }
}
