
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public protocol GlobalEventHandlers: JSBridgedType {}

public extension GlobalEventHandlers {
    var onabort: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onabort"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onabort"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onabort"] = .null
            }
        }
    }

    var onauxclick: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onauxclick"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onauxclick"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onauxclick"] = .null
            }
        }
    }

    var onblur: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onblur"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onblur"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onblur"] = .null
            }
        }
    }

    var oncancel: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oncancel"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oncancel"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oncancel"] = .null
            }
        }
    }

    var oncanplay: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oncanplay"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oncanplay"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oncanplay"] = .null
            }
        }
    }

    var oncanplaythrough: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oncanplaythrough"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oncanplaythrough"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oncanplaythrough"] = .null
            }
        }
    }

    var onchange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onchange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onchange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onchange"] = .null
            }
        }
    }

    var onclick: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onclick"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onclick"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onclick"] = .null
            }
        }
    }

    var onclose: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onclose"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onclose"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onclose"] = .null
            }
        }
    }

    var oncontextmenu: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oncontextmenu"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oncontextmenu"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oncontextmenu"] = .null
            }
        }
    }

    var oncuechange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oncuechange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oncuechange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oncuechange"] = .null
            }
        }
    }

    var ondblclick: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondblclick"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondblclick"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondblclick"] = .null
            }
        }
    }

    var ondrag: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondrag"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondrag"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondrag"] = .null
            }
        }
    }

    var ondragend: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondragend"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondragend"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondragend"] = .null
            }
        }
    }

    var ondragenter: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondragenter"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondragenter"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondragenter"] = .null
            }
        }
    }

    var ondragexit: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondragexit"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondragexit"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondragexit"] = .null
            }
        }
    }

    var ondragleave: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondragleave"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondragleave"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondragleave"] = .null
            }
        }
    }

    var ondragover: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondragover"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondragover"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondragover"] = .null
            }
        }
    }

    var ondragstart: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondragstart"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondragstart"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondragstart"] = .null
            }
        }
    }

    var ondrop: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondrop"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondrop"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondrop"] = .null
            }
        }
    }

    var ondurationchange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ondurationchange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ondurationchange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ondurationchange"] = .null
            }
        }
    }

    var onemptied: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onemptied"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onemptied"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onemptied"] = .null
            }
        }
    }

    var onended: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onended"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onended"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onended"] = .null
            }
        }
    }

    var onerror: OnErrorEventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onerror"] as JSFunctionRef? else {
                return nil
            }
            return { arg0, arg1, arg2, arg3, arg4 in function.dynamicallyCall(withArguments: [arg0, arg1, arg2, arg3, arg4]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onerror"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue(), arguments[1].fromJSValue(), arguments[2].fromJSValue(), arguments[3].fromJSValue(), arguments[4].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onerror"] = .null
            }
        }
    }

    var onfocus: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onfocus"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onfocus"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onfocus"] = .null
            }
        }
    }

    var onformdata: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onformdata"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onformdata"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onformdata"] = .null
            }
        }
    }

    var oninput: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oninput"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oninput"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oninput"] = .null
            }
        }
    }

    var oninvalid: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "oninvalid"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "oninvalid"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "oninvalid"] = .null
            }
        }
    }

    var onkeydown: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onkeydown"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onkeydown"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onkeydown"] = .null
            }
        }
    }

    var onkeypress: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onkeypress"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onkeypress"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onkeypress"] = .null
            }
        }
    }

    var onkeyup: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onkeyup"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onkeyup"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onkeyup"] = .null
            }
        }
    }

    var onload: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onload"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onload"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onload"] = .null
            }
        }
    }

    var onloadeddata: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onloadeddata"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onloadeddata"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onloadeddata"] = .null
            }
        }
    }

    var onloadedmetadata: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onloadedmetadata"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onloadedmetadata"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onloadedmetadata"] = .null
            }
        }
    }

    var onloadstart: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onloadstart"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onloadstart"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onloadstart"] = .null
            }
        }
    }

    var onmousedown: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmousedown"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmousedown"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmousedown"] = .null
            }
        }
    }

    var onmouseenter: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmouseenter"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmouseenter"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmouseenter"] = .null
            }
        }
    }

    var onmouseleave: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmouseleave"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmouseleave"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmouseleave"] = .null
            }
        }
    }

    var onmousemove: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmousemove"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmousemove"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmousemove"] = .null
            }
        }
    }

    var onmouseout: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmouseout"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmouseout"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmouseout"] = .null
            }
        }
    }

    var onmouseover: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmouseover"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmouseover"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmouseover"] = .null
            }
        }
    }

    var onmouseup: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onmouseup"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onmouseup"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onmouseup"] = .null
            }
        }
    }

    var onpause: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onpause"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onpause"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onpause"] = .null
            }
        }
    }

    var onplay: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onplay"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onplay"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onplay"] = .null
            }
        }
    }

    var onplaying: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onplaying"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onplaying"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onplaying"] = .null
            }
        }
    }

    var onprogress: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onprogress"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onprogress"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onprogress"] = .null
            }
        }
    }

    var onratechange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onratechange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onratechange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onratechange"] = .null
            }
        }
    }

    var onreset: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onreset"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onreset"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onreset"] = .null
            }
        }
    }

    var onresize: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onresize"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onresize"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onresize"] = .null
            }
        }
    }

    var onscroll: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onscroll"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onscroll"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onscroll"] = .null
            }
        }
    }

    var onsecuritypolicyviolation: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onsecuritypolicyviolation"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onsecuritypolicyviolation"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onsecuritypolicyviolation"] = .null
            }
        }
    }

    var onseeked: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onseeked"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onseeked"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onseeked"] = .null
            }
        }
    }

    var onseeking: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onseeking"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onseeking"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onseeking"] = .null
            }
        }
    }

    var onselect: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onselect"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onselect"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onselect"] = .null
            }
        }
    }

    var onslotchange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onslotchange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onslotchange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onslotchange"] = .null
            }
        }
    }

    var onstalled: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onstalled"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onstalled"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onstalled"] = .null
            }
        }
    }

    var onsubmit: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onsubmit"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onsubmit"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onsubmit"] = .null
            }
        }
    }

    var onsuspend: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onsuspend"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onsuspend"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onsuspend"] = .null
            }
        }
    }

    var ontimeupdate: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ontimeupdate"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ontimeupdate"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ontimeupdate"] = .null
            }
        }
    }

    var ontoggle: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "ontoggle"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "ontoggle"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "ontoggle"] = .null
            }
        }
    }

    var onvolumechange: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onvolumechange"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onvolumechange"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onvolumechange"] = .null
            }
        }
    }

    var onwaiting: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onwaiting"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onwaiting"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onwaiting"] = .null
            }
        }
    }

    var onwebkitanimationend: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onwebkitanimationend"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onwebkitanimationend"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onwebkitanimationend"] = .null
            }
        }
    }

    var onwebkitanimationiteration: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onwebkitanimationiteration"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onwebkitanimationiteration"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onwebkitanimationiteration"] = .null
            }
        }
    }

    var onwebkitanimationstart: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onwebkitanimationstart"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onwebkitanimationstart"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onwebkitanimationstart"] = .null
            }
        }
    }

    var onwebkittransitionend: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onwebkittransitionend"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onwebkittransitionend"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onwebkittransitionend"] = .null
            }
        }
    }

    var onwheel: EventHandler {
        get {
            guard let function = objectRef[dynamicMember: "onwheel"] as JSFunctionRef? else {
                return nil
            }
            return { arg0 in function.dynamicallyCall(withArguments: [arg0]).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef[dynamicMember: "onwheel"] = JSFunctionRef.from { arguments in
                    newValue(arguments[0].fromJSValue()).jsValue()
                }.jsValue()
            } else {
                objectRef[dynamicMember: "onwheel"] = .null
            }
        }
    }
}
