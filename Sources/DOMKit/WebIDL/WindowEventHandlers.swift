
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol WindowEventHandlers: JSAbstractBridgedType {}

public extension WindowEventHandlers {
    var onafterprint: EventHandler {
        get {
            guard let function = objectRef.onafterprint.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onafterprint = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onbeforeprint = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onbeforeunload = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onhashchange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onlanguagechange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmessage = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmessageerror = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onoffline = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ononline = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onpagehide = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onpageshow = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onpopstate = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onrejectionhandled = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onstorage = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onunhandledrejection = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
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
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onunload = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onunload = .null
            }
        }
    }
}
