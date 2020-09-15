
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol WindowEventHandlers: JSBridgedClass {}

public extension WindowEventHandlers {
    var onafterprint: EventHandler {
        get {
            guard let function = jsObject.onafterprint.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onafterprint = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onafterprint = .null
            }
        }
    }

    var onbeforeprint: EventHandler {
        get {
            guard let function = jsObject.onbeforeprint.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onbeforeprint = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onbeforeprint = .null
            }
        }
    }

    var onbeforeunload: OnBeforeUnloadEventHandler {
        get {
            guard let function = jsObject.onbeforeunload.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onbeforeunload = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onbeforeunload = .null
            }
        }
    }

    var onhashchange: EventHandler {
        get {
            guard let function = jsObject.onhashchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onhashchange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onhashchange = .null
            }
        }
    }

    var onlanguagechange: EventHandler {
        get {
            guard let function = jsObject.onlanguagechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onlanguagechange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onlanguagechange = .null
            }
        }
    }

    var onmessage: EventHandler {
        get {
            guard let function = jsObject.onmessage.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onmessage = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onmessage = .null
            }
        }
    }

    var onmessageerror: EventHandler {
        get {
            guard let function = jsObject.onmessageerror.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onmessageerror = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onmessageerror = .null
            }
        }
    }

    var onoffline: EventHandler {
        get {
            guard let function = jsObject.onoffline.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onoffline = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onoffline = .null
            }
        }
    }

    var ononline: EventHandler {
        get {
            guard let function = jsObject.ononline.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.ononline = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.ononline = .null
            }
        }
    }

    var onpagehide: EventHandler {
        get {
            guard let function = jsObject.onpagehide.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onpagehide = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onpagehide = .null
            }
        }
    }

    var onpageshow: EventHandler {
        get {
            guard let function = jsObject.onpageshow.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onpageshow = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onpageshow = .null
            }
        }
    }

    var onpopstate: EventHandler {
        get {
            guard let function = jsObject.onpopstate.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onpopstate = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onpopstate = .null
            }
        }
    }

    var onrejectionhandled: EventHandler {
        get {
            guard let function = jsObject.onrejectionhandled.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onrejectionhandled = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onrejectionhandled = .null
            }
        }
    }

    var onstorage: EventHandler {
        get {
            guard let function = jsObject.onstorage.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onstorage = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onstorage = .null
            }
        }
    }

    var onunhandledrejection: EventHandler {
        get {
            guard let function = jsObject.onunhandledrejection.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onunhandledrejection = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onunhandledrejection = .null
            }
        }
    }

    var onunload: EventHandler {
        get {
            guard let function = jsObject.onunload.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onunload = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onunload = .null
            }
        }
    }
}
