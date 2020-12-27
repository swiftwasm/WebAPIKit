
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public extension HTMLElement {
    var onabort: EventHandler {
        get {
            guard let function = jsObject.onabort.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onabort"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onabort"] = closure
                jsObject.onabort = closure.jsValue()
            } else {
                jsObject.onabort = .null
            }
        }
    }

    var onauxclick: EventHandler {
        get {
            guard let function = jsObject.onauxclick.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onauxclick"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onauxclick"] = closure
                jsObject.onauxclick = closure.jsValue()
            } else {
                jsObject.onauxclick = .null
            }
        }
    }

    var onblur: EventHandler {
        get {
            guard let function = jsObject.onblur.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onblur"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onblur"] = closure
                jsObject.onblur = closure.jsValue()
            } else {
                jsObject.onblur = .null
            }
        }
    }

    var oncancel: EventHandler {
        get {
            guard let function = jsObject.oncancel.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["oncancel"] {
                    oldClosure.release()
                }
                eventHandlerClosures["oncancel"] = closure
                jsObject.oncancel = closure.jsValue()
            } else {
                jsObject.oncancel = .null
            }
        }
    }

    var oncanplay: EventHandler {
        get {
            guard let function = jsObject.oncanplay.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["oncanplay"] {
                    oldClosure.release()
                }
                eventHandlerClosures["oncanplay"] = closure
                jsObject.oncanplay = closure.jsValue()
            } else {
                jsObject.oncanplay = .null
            }
        }
    }

    var oncanplaythrough: EventHandler {
        get {
            guard let function = jsObject.oncanplaythrough.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["oncanplaythrough"] {
                    oldClosure.release()
                }
                eventHandlerClosures["oncanplaythrough"] = closure
                jsObject.oncanplaythrough = closure.jsValue()
            } else {
                jsObject.oncanplaythrough = .null
            }
        }
    }

    var onchange: EventHandler {
        get {
            guard let function = jsObject.onchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onchange"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onchange"] = closure
                jsObject.onchange = closure.jsValue()
            } else {
                jsObject.onchange = .null
            }
        }
    }

    var onclick: EventHandler {
        get {
            guard let function = jsObject.onclick.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onclick"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onclick"] = closure
                jsObject.onclick = closure.jsValue()
            } else {
                jsObject.onclick = .null
            }
        }
    }

    var onclose: EventHandler {
        get {
            guard let function = jsObject.onclose.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onclose"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onclose"] = closure
                jsObject.onclose = closure.jsValue()
            } else {
                jsObject.onclose = .null
            }
        }
    }

    var oncontextmenu: EventHandler {
        get {
            guard let function = jsObject.oncontextmenu.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["oncontextmenu"] {
                    oldClosure.release()
                }
                eventHandlerClosures["oncontextmenu"] = closure
                jsObject.oncontextmenu = closure.jsValue()
            } else {
                jsObject.oncontextmenu = .null
            }
        }
    }

    var oncuechange: EventHandler {
        get {
            guard let function = jsObject.oncuechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["oncuechange"] {
                    oldClosure.release()
                }
                eventHandlerClosures["oncuechange"] = closure
                jsObject.oncuechange = closure.jsValue()
            } else {
                jsObject.oncuechange = .null
            }
        }
    }

    var ondblclick: EventHandler {
        get {
            guard let function = jsObject.ondblclick.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondblclick"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondblclick"] = closure
                jsObject.ondblclick = closure.jsValue()
            } else {
                jsObject.ondblclick = .null
            }
        }
    }

    var ondrag: EventHandler {
        get {
            guard let function = jsObject.ondrag.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondrag"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondrag"] = closure
                jsObject.ondrag = closure.jsValue()
            } else {
                jsObject.ondrag = .null
            }
        }
    }

    var ondragend: EventHandler {
        get {
            guard let function = jsObject.ondragend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondragend"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondragend"] = closure
                jsObject.ondragend = closure.jsValue()
            } else {
                jsObject.ondragend = .null
            }
        }
    }

    var ondragenter: EventHandler {
        get {
            guard let function = jsObject.ondragenter.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondragenter"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondragenter"] = closure
                jsObject.ondragenter = closure.jsValue()
            } else {
                jsObject.ondragenter = .null
            }
        }
    }

    var ondragexit: EventHandler {
        get {
            guard let function = jsObject.ondragexit.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondragexit"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondragexit"] = closure
                jsObject.ondragexit = closure.jsValue()
            } else {
                jsObject.ondragexit = .null
            }
        }
    }

    var ondragleave: EventHandler {
        get {
            guard let function = jsObject.ondragleave.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondragleave"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondragleave"] = closure
                jsObject.ondragleave = closure.jsValue()
            } else {
                jsObject.ondragleave = .null
            }
        }
    }

    var ondragover: EventHandler {
        get {
            guard let function = jsObject.ondragover.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondragover"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondragover"] = closure
                jsObject.ondragover = closure.jsValue()
            } else {
                jsObject.ondragover = .null
            }
        }
    }

    var ondragstart: EventHandler {
        get {
            guard let function = jsObject.ondragstart.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondragstart"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondragstart"] = closure
                jsObject.ondragstart = closure.jsValue()
            } else {
                jsObject.ondragstart = .null
            }
        }
    }

    var ondrop: EventHandler {
        get {
            guard let function = jsObject.ondrop.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondrop"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondrop"] = closure
                jsObject.ondrop = closure.jsValue()
            } else {
                jsObject.ondrop = .null
            }
        }
    }

    var ondurationchange: EventHandler {
        get {
            guard let function = jsObject.ondurationchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ondurationchange"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ondurationchange"] = closure
                jsObject.ondurationchange = closure.jsValue()
            } else {
                jsObject.ondurationchange = .null
            }
        }
    }

    var onemptied: EventHandler {
        get {
            guard let function = jsObject.onemptied.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onemptied"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onemptied"] = closure
                jsObject.onemptied = closure.jsValue()
            } else {
                jsObject.onemptied = .null
            }
        }
    }

    var onended: EventHandler {
        get {
            guard let function = jsObject.onended.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onended"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onended"] = closure
                jsObject.onended = closure.jsValue()
            } else {
                jsObject.onended = .null
            }
        }
    }

    var onerror: OnErrorEventHandler {
        get {
            guard let function = jsObject.onerror.function else {
                return nil
            }
            return { arg0, arg1, arg2, arg3, arg4 in function(arg0, arg1, arg2, arg3, arg4).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!, arguments[1].fromJSValue()!, arguments[2].fromJSValue()!, arguments[3].fromJSValue()!, arguments[4].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onerror"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onerror"] = closure
                jsObject.onerror = closure.jsValue()
            } else {
                jsObject.onerror = .null
            }
        }
    }

    var onfocus: EventHandler {
        get {
            guard let function = jsObject.onfocus.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onfocus"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onfocus"] = closure
                jsObject.onfocus = closure.jsValue()
            } else {
                jsObject.onfocus = .null
            }
        }
    }

    var onformdata: EventHandler {
        get {
            guard let function = jsObject.onformdata.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onformdata"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onformdata"] = closure
                jsObject.onformdata = closure.jsValue()
            } else {
                jsObject.onformdata = .null
            }
        }
    }

    var oninput: EventHandler {
        get {
            guard let function = jsObject.oninput.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["oninput"] {
                    oldClosure.release()
                }
                eventHandlerClosures["oninput"] = closure
                jsObject.oninput = closure.jsValue()
            } else {
                jsObject.oninput = .null
            }
        }
    }

    var oninvalid: EventHandler {
        get {
            guard let function = jsObject.oninvalid.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["oninvalid"] {
                    oldClosure.release()
                }
                eventHandlerClosures["oninvalid"] = closure
                jsObject.oninvalid = closure.jsValue()
            } else {
                jsObject.oninvalid = .null
            }
        }
    }

    var onkeydown: EventHandler {
        get {
            guard let function = jsObject.onkeydown.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onkeydown"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onkeydown"] = closure
                jsObject.onkeydown = closure.jsValue()
            } else {
                jsObject.onkeydown = .null
            }
        }
    }

    var onkeypress: EventHandler {
        get {
            guard let function = jsObject.onkeypress.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onkeypress"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onkeypress"] = closure
                jsObject.onkeypress = closure.jsValue()
            } else {
                jsObject.onkeypress = .null
            }
        }
    }

    var onkeyup: EventHandler {
        get {
            guard let function = jsObject.onkeyup.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onkeyup"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onkeyup"] = closure
                jsObject.onkeyup = closure.jsValue()
            } else {
                jsObject.onkeyup = .null
            }
        }
    }

    var onload: EventHandler {
        get {
            guard let function = jsObject.onload.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onload"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onload"] = closure
                jsObject.onload = closure.jsValue()
            } else {
                jsObject.onload = .null
            }
        }
    }

    var onloadeddata: EventHandler {
        get {
            guard let function = jsObject.onloadeddata.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onloadeddata"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onloadeddata"] = closure
                jsObject.onloadeddata = closure.jsValue()
            } else {
                jsObject.onloadeddata = .null
            }
        }
    }

    var onloadedmetadata: EventHandler {
        get {
            guard let function = jsObject.onloadedmetadata.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onloadedmetadata"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onloadedmetadata"] = closure
                jsObject.onloadedmetadata = closure.jsValue()
            } else {
                jsObject.onloadedmetadata = .null
            }
        }
    }

    var onloadstart: EventHandler {
        get {
            guard let function = jsObject.onloadstart.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onloadstart"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onloadstart"] = closure
                jsObject.onloadstart = closure.jsValue()
            } else {
                jsObject.onloadstart = .null
            }
        }
    }

    var onmousedown: EventHandler {
        get {
            guard let function = jsObject.onmousedown.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onmousedown"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onmousedown"] = closure
                jsObject.onmousedown = closure.jsValue()
            } else {
                jsObject.onmousedown = .null
            }
        }
    }

    var onmouseenter: EventHandler {
        get {
            guard let function = jsObject.onmouseenter.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onmouseenter"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onmouseenter"] = closure
                jsObject.onmouseenter = closure.jsValue()
            } else {
                jsObject.onmouseenter = .null
            }
        }
    }

    var onmouseleave: EventHandler {
        get {
            guard let function = jsObject.onmouseleave.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onmouseleave"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onmouseleave"] = closure
                jsObject.onmouseleave = closure.jsValue()
            } else {
                jsObject.onmouseleave = .null
            }
        }
    }

    var onmousemove: EventHandler {
        get {
            guard let function = jsObject.onmousemove.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onmousemove"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onmousemove"] = closure
                jsObject.onmousemove = closure.jsValue()
            } else {
                jsObject.onmousemove = .null
            }
        }
    }

    var onmouseout: EventHandler {
        get {
            guard let function = jsObject.onmouseout.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onmouseout"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onmouseout"] = closure
                jsObject.onmouseout = closure.jsValue()
            } else {
                jsObject.onmouseout = .null
            }
        }
    }

    var onmouseover: EventHandler {
        get {
            guard let function = jsObject.onmouseover.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onmouseover"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onmouseover"] = closure
                jsObject.onmouseover = closure.jsValue()
            } else {
                jsObject.onmouseover = .null
            }
        }
    }

    var onmouseup: EventHandler {
        get {
            guard let function = jsObject.onmouseup.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onmouseup"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onmouseup"] = closure
                jsObject.onmouseup = closure.jsValue()
            } else {
                jsObject.onmouseup = .null
            }
        }
    }

    var onpause: EventHandler {
        get {
            guard let function = jsObject.onpause.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onpause"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onpause"] = closure
                jsObject.onpause = closure.jsValue()
            } else {
                jsObject.onpause = .null
            }
        }
    }

    var onplay: EventHandler {
        get {
            guard let function = jsObject.onplay.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onplay"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onplay"] = closure
                jsObject.onplay = closure.jsValue()
            } else {
                jsObject.onplay = .null
            }
        }
    }

    var onplaying: EventHandler {
        get {
            guard let function = jsObject.onplaying.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onplaying"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onplaying"] = closure
                jsObject.onplaying = closure.jsValue()
            } else {
                jsObject.onplaying = .null
            }
        }
    }

    var onprogress: EventHandler {
        get {
            guard let function = jsObject.onprogress.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onprogress"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onprogress"] = closure
                jsObject.onprogress = closure.jsValue()
            } else {
                jsObject.onprogress = .null
            }
        }
    }

    var onratechange: EventHandler {
        get {
            guard let function = jsObject.onratechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onratechange"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onratechange"] = closure
                jsObject.onratechange = closure.jsValue()
            } else {
                jsObject.onratechange = .null
            }
        }
    }

    var onreset: EventHandler {
        get {
            guard let function = jsObject.onreset.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onreset"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onreset"] = closure
                jsObject.onreset = closure.jsValue()
            } else {
                jsObject.onreset = .null
            }
        }
    }

    var onresize: EventHandler {
        get {
            guard let function = jsObject.onresize.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onresize"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onresize"] = closure
                jsObject.onresize = closure.jsValue()
            } else {
                jsObject.onresize = .null
            }
        }
    }

    var onscroll: EventHandler {
        get {
            guard let function = jsObject.onscroll.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onscroll"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onscroll"] = closure
                jsObject.onscroll = closure.jsValue()
            } else {
                jsObject.onscroll = .null
            }
        }
    }

    var onsecuritypolicyviolation: EventHandler {
        get {
            guard let function = jsObject.onsecuritypolicyviolation.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onsecuritypolicyviolation"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onsecuritypolicyviolation"] = closure
                jsObject.onsecuritypolicyviolation = closure.jsValue()
            } else {
                jsObject.onsecuritypolicyviolation = .null
            }
        }
    }

    var onseeked: EventHandler {
        get {
            guard let function = jsObject.onseeked.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onseeked"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onseeked"] = closure
                jsObject.onseeked = closure.jsValue()
            } else {
                jsObject.onseeked = .null
            }
        }
    }

    var onseeking: EventHandler {
        get {
            guard let function = jsObject.onseeking.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onseeking"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onseeking"] = closure
                jsObject.onseeking = closure.jsValue()
            } else {
                jsObject.onseeking = .null
            }
        }
    }

    var onselect: EventHandler {
        get {
            guard let function = jsObject.onselect.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onselect"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onselect"] = closure
                jsObject.onselect = closure.jsValue()
            } else {
                jsObject.onselect = .null
            }
        }
    }

    var onslotchange: EventHandler {
        get {
            guard let function = jsObject.onslotchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onslotchange"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onslotchange"] = closure
                jsObject.onslotchange = closure.jsValue()
            } else {
                jsObject.onslotchange = .null
            }
        }
    }

    var onstalled: EventHandler {
        get {
            guard let function = jsObject.onstalled.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onstalled"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onstalled"] = closure
                jsObject.onstalled = closure.jsValue()
            } else {
                jsObject.onstalled = .null
            }
        }
    }

    var onsubmit: EventHandler {
        get {
            guard let function = jsObject.onsubmit.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onsubmit"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onsubmit"] = closure
                jsObject.onsubmit = closure.jsValue()
            } else {
                jsObject.onsubmit = .null
            }
        }
    }

    var onsuspend: EventHandler {
        get {
            guard let function = jsObject.onsuspend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onsuspend"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onsuspend"] = closure
                jsObject.onsuspend = closure.jsValue()
            } else {
                jsObject.onsuspend = .null
            }
        }
    }

    var ontimeupdate: EventHandler {
        get {
            guard let function = jsObject.ontimeupdate.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ontimeupdate"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ontimeupdate"] = closure
                jsObject.ontimeupdate = closure.jsValue()
            } else {
                jsObject.ontimeupdate = .null
            }
        }
    }

    var ontoggle: EventHandler {
        get {
            guard let function = jsObject.ontoggle.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["ontoggle"] {
                    oldClosure.release()
                }
                eventHandlerClosures["ontoggle"] = closure
                jsObject.ontoggle = closure.jsValue()
            } else {
                jsObject.ontoggle = .null
            }
        }
    }

    var onvolumechange: EventHandler {
        get {
            guard let function = jsObject.onvolumechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onvolumechange"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onvolumechange"] = closure
                jsObject.onvolumechange = closure.jsValue()
            } else {
                jsObject.onvolumechange = .null
            }
        }
    }

    var onwaiting: EventHandler {
        get {
            guard let function = jsObject.onwaiting.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onwaiting"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onwaiting"] = closure
                jsObject.onwaiting = closure.jsValue()
            } else {
                jsObject.onwaiting = .null
            }
        }
    }

    var onwebkitanimationend: EventHandler {
        get {
            guard let function = jsObject.onwebkitanimationend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onwebkitanimationend"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onwebkitanimationend"] = closure
                jsObject.onwebkitanimationend = closure.jsValue()
            } else {
                jsObject.onwebkitanimationend = .null
            }
        }
    }

    var onwebkitanimationiteration: EventHandler {
        get {
            guard let function = jsObject.onwebkitanimationiteration.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onwebkitanimationiteration"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onwebkitanimationiteration"] = closure
                jsObject.onwebkitanimationiteration = closure.jsValue()
            } else {
                jsObject.onwebkitanimationiteration = .null
            }
        }
    }

    var onwebkitanimationstart: EventHandler {
        get {
            guard let function = jsObject.onwebkitanimationstart.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onwebkitanimationstart"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onwebkitanimationstart"] = closure
                jsObject.onwebkitanimationstart = closure.jsValue()
            } else {
                jsObject.onwebkitanimationstart = .null
            }
        }
    }

    var onwebkittransitionend: EventHandler {
        get {
            guard let function = jsObject.onwebkittransitionend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onwebkittransitionend"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onwebkittransitionend"] = closure
                jsObject.onwebkittransitionend = closure.jsValue()
            } else {
                jsObject.onwebkittransitionend = .null
            }
        }
    }

    var onwheel: EventHandler {
        get {
            guard let function = jsObject.onwheel.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                let closure = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }
                if let oldClosure = eventHandlerClosures["onwheel"] {
                    oldClosure.release()
                }
                eventHandlerClosures["onwheel"] = closure
                jsObject.onwheel = closure.jsValue()
            } else {
                jsObject.onwheel = .null
            }
        }
    }
}
