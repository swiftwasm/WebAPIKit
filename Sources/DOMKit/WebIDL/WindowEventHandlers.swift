
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol WindowEventHandlers: JSBridgedClass {}

public extension WindowEventHandlers {
    var onafterprint: EventHandler {
        get {
            guard let function = objectRef.onafterprint.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onafterprint = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onafterprint = .null
            }
        }
    }

    var onbeforeprint: EventHandler {
        get {
            guard let function = objectRef.onbeforeprint.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onbeforeprint = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onbeforeprint = .null
            }
        }
    }

    var onbeforeunload: OnBeforeUnloadEventHandler {
        get {
            guard let function = objectRef.onbeforeunload.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onbeforeunload = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onbeforeunload = .null
            }
        }
    }

    var onhashchange: EventHandler {
        get {
            guard let function = objectRef.onhashchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onhashchange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onhashchange = .null
            }
        }
    }

    var onlanguagechange: EventHandler {
        get {
            guard let function = objectRef.onlanguagechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onlanguagechange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onlanguagechange = .null
            }
        }
    }

    var onmessage: EventHandler {
        get {
            guard let function = objectRef.onmessage.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onmessage = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onmessage = .null
            }
        }
    }

    var onmessageerror: EventHandler {
        get {
            guard let function = objectRef.onmessageerror.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onmessageerror = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onmessageerror = .null
            }
        }
    }

    var onoffline: EventHandler {
        get {
            guard let function = objectRef.onoffline.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onoffline = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onoffline = .null
            }
        }
    }

    var ononline: EventHandler {
        get {
            guard let function = objectRef.ononline.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.ononline = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.ononline = .null
            }
        }
    }

    var onpagehide: EventHandler {
        get {
            guard let function = objectRef.onpagehide.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onpagehide = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onpagehide = .null
            }
        }
    }

    var onpageshow: EventHandler {
        get {
            guard let function = objectRef.onpageshow.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onpageshow = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onpageshow = .null
            }
        }
    }

    var onpopstate: EventHandler {
        get {
            guard let function = objectRef.onpopstate.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onpopstate = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onpopstate = .null
            }
        }
    }

    var onrejectionhandled: EventHandler {
        get {
            guard let function = objectRef.onrejectionhandled.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onrejectionhandled = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onrejectionhandled = .null
            }
        }
    }

    var onstorage: EventHandler {
        get {
            guard let function = objectRef.onstorage.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onstorage = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onstorage = .null
            }
        }
    }

    var onunhandledrejection: EventHandler {
        get {
            guard let function = objectRef.onunhandledrejection.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onunhandledrejection = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onunhandledrejection = .null
            }
        }
    }

    var onunload: EventHandler {
        get {
            guard let function = objectRef.onunload.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                objectRef.onunload = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                objectRef.onunload = .null
            }
        }
    }
}
