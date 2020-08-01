
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public protocol WindowEventHandlers: JSBridgedType {}

public extension WindowEventHandlers {
    var onafterprint: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onafterprint"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onafterprint"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onafterprint"] = .null
            }
        }
    }

    var onbeforeprint: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onbeforeprint"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onbeforeprint"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onbeforeprint"] = .null
            }
        }
    }

    var onbeforeunload: OnBeforeUnloadEventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onbeforeunload"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onbeforeunload"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onbeforeunload"] = .null
            }
        }
    }

    var onhashchange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onhashchange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onhashchange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onhashchange"] = .null
            }
        }
    }

    var onlanguagechange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onlanguagechange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onlanguagechange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onlanguagechange"] = .null
            }
        }
    }

    var onmessage: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmessage"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmessage"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmessage"] = .null
            }
        }
    }

    var onmessageerror: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmessageerror"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmessageerror"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmessageerror"] = .null
            }
        }
    }

    var onoffline: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onoffline"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onoffline"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onoffline"] = .null
            }
        }
    }

    var ononline: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ononline"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ononline"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ononline"] = .null
            }
        }
    }

    var onpagehide: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onpagehide"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onpagehide"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onpagehide"] = .null
            }
        }
    }

    var onpageshow: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onpageshow"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onpageshow"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onpageshow"] = .null
            }
        }
    }

    var onpopstate: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onpopstate"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onpopstate"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onpopstate"] = .null
            }
        }
    }

    var onrejectionhandled: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onrejectionhandled"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onrejectionhandled"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onrejectionhandled"] = .null
            }
        }
    }

    var onstorage: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onstorage"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onstorage"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onstorage"] = .null
            }
        }
    }

    var onunhandledrejection: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onunhandledrejection"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onunhandledrejection"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onunhandledrejection"] = .null
            }
        }
    }

    var onunload: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onunload"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onunload"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onunload"] = .null
            }
        }
    }
}
