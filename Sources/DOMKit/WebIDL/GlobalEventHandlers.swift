
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol GlobalEventHandlers: JSAbstractBridgedType {}

public extension GlobalEventHandlers {
    var onabort: EventHandler {
        get {
            guard let function = objectRef.onabort.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onabort = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onabort = .null
            }
        }
    }

    var onauxclick: EventHandler {
        get {
            guard let function = objectRef.onauxclick.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onauxclick = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onauxclick = .null
            }
        }
    }

    var onblur: EventHandler {
        get {
            guard let function = objectRef.onblur.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onblur = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onblur = .null
            }
        }
    }

    var oncancel: EventHandler {
        get {
            guard let function = objectRef.oncancel.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oncancel = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.oncancel = .null
            }
        }
    }

    var oncanplay: EventHandler {
        get {
            guard let function = objectRef.oncanplay.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oncanplay = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.oncanplay = .null
            }
        }
    }

    var oncanplaythrough: EventHandler {
        get {
            guard let function = objectRef.oncanplaythrough.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oncanplaythrough = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.oncanplaythrough = .null
            }
        }
    }

    var onchange: EventHandler {
        get {
            guard let function = objectRef.onchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onchange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onchange = .null
            }
        }
    }

    var onclick: EventHandler {
        get {
            guard let function = objectRef.onclick.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onclick = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onclick = .null
            }
        }
    }

    var onclose: EventHandler {
        get {
            guard let function = objectRef.onclose.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onclose = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onclose = .null
            }
        }
    }

    var oncontextmenu: EventHandler {
        get {
            guard let function = objectRef.oncontextmenu.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oncontextmenu = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.oncontextmenu = .null
            }
        }
    }

    var oncuechange: EventHandler {
        get {
            guard let function = objectRef.oncuechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oncuechange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.oncuechange = .null
            }
        }
    }

    var ondblclick: EventHandler {
        get {
            guard let function = objectRef.ondblclick.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondblclick = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondblclick = .null
            }
        }
    }

    var ondrag: EventHandler {
        get {
            guard let function = objectRef.ondrag.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondrag = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondrag = .null
            }
        }
    }

    var ondragend: EventHandler {
        get {
            guard let function = objectRef.ondragend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondragend = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondragend = .null
            }
        }
    }

    var ondragenter: EventHandler {
        get {
            guard let function = objectRef.ondragenter.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondragenter = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondragenter = .null
            }
        }
    }

    var ondragexit: EventHandler {
        get {
            guard let function = objectRef.ondragexit.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondragexit = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondragexit = .null
            }
        }
    }

    var ondragleave: EventHandler {
        get {
            guard let function = objectRef.ondragleave.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondragleave = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondragleave = .null
            }
        }
    }

    var ondragover: EventHandler {
        get {
            guard let function = objectRef.ondragover.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondragover = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondragover = .null
            }
        }
    }

    var ondragstart: EventHandler {
        get {
            guard let function = objectRef.ondragstart.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondragstart = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondragstart = .null
            }
        }
    }

    var ondrop: EventHandler {
        get {
            guard let function = objectRef.ondrop.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondrop = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondrop = .null
            }
        }
    }

    var ondurationchange: EventHandler {
        get {
            guard let function = objectRef.ondurationchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ondurationchange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ondurationchange = .null
            }
        }
    }

    var onemptied: EventHandler {
        get {
            guard let function = objectRef.onemptied.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onemptied = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onemptied = .null
            }
        }
    }

    var onended: EventHandler {
        get {
            guard let function = objectRef.onended.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onended = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onended = .null
            }
        }
    }

    var onerror: OnErrorEventHandler {
        get {
            guard let function = objectRef.onerror.function else {
                return nil
            }
            return { arg0, arg1, arg2, arg3, arg4 in function(arg0, arg1, arg2, arg3, arg4).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onerror = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue(), arguments[1].fromJSValue(), arguments[2].fromJSValue(), arguments[3].fromJSValue(), arguments[4].fromJSValue()))
                })
            } else {
                objectRef.onerror = .null
            }
        }
    }

    var onfocus: EventHandler {
        get {
            guard let function = objectRef.onfocus.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onfocus = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onfocus = .null
            }
        }
    }

    var onformdata: EventHandler {
        get {
            guard let function = objectRef.onformdata.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onformdata = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onformdata = .null
            }
        }
    }

    var oninput: EventHandler {
        get {
            guard let function = objectRef.oninput.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oninput = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.oninput = .null
            }
        }
    }

    var oninvalid: EventHandler {
        get {
            guard let function = objectRef.oninvalid.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.oninvalid = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.oninvalid = .null
            }
        }
    }

    var onkeydown: EventHandler {
        get {
            guard let function = objectRef.onkeydown.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onkeydown = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onkeydown = .null
            }
        }
    }

    var onkeypress: EventHandler {
        get {
            guard let function = objectRef.onkeypress.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onkeypress = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onkeypress = .null
            }
        }
    }

    var onkeyup: EventHandler {
        get {
            guard let function = objectRef.onkeyup.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onkeyup = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onkeyup = .null
            }
        }
    }

    var onload: EventHandler {
        get {
            guard let function = objectRef.onload.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onload = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onload = .null
            }
        }
    }

    var onloadeddata: EventHandler {
        get {
            guard let function = objectRef.onloadeddata.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onloadeddata = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onloadeddata = .null
            }
        }
    }

    var onloadedmetadata: EventHandler {
        get {
            guard let function = objectRef.onloadedmetadata.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onloadedmetadata = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onloadedmetadata = .null
            }
        }
    }

    var onloadstart: EventHandler {
        get {
            guard let function = objectRef.onloadstart.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onloadstart = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onloadstart = .null
            }
        }
    }

    var onmousedown: EventHandler {
        get {
            guard let function = objectRef.onmousedown.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmousedown = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onmousedown = .null
            }
        }
    }

    var onmouseenter: EventHandler {
        get {
            guard let function = objectRef.onmouseenter.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmouseenter = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onmouseenter = .null
            }
        }
    }

    var onmouseleave: EventHandler {
        get {
            guard let function = objectRef.onmouseleave.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmouseleave = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onmouseleave = .null
            }
        }
    }

    var onmousemove: EventHandler {
        get {
            guard let function = objectRef.onmousemove.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmousemove = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onmousemove = .null
            }
        }
    }

    var onmouseout: EventHandler {
        get {
            guard let function = objectRef.onmouseout.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmouseout = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onmouseout = .null
            }
        }
    }

    var onmouseover: EventHandler {
        get {
            guard let function = objectRef.onmouseover.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmouseover = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onmouseover = .null
            }
        }
    }

    var onmouseup: EventHandler {
        get {
            guard let function = objectRef.onmouseup.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onmouseup = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onmouseup = .null
            }
        }
    }

    var onpause: EventHandler {
        get {
            guard let function = objectRef.onpause.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onpause = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onpause = .null
            }
        }
    }

    var onplay: EventHandler {
        get {
            guard let function = objectRef.onplay.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onplay = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onplay = .null
            }
        }
    }

    var onplaying: EventHandler {
        get {
            guard let function = objectRef.onplaying.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onplaying = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onplaying = .null
            }
        }
    }

    var onprogress: EventHandler {
        get {
            guard let function = objectRef.onprogress.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onprogress = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onprogress = .null
            }
        }
    }

    var onratechange: EventHandler {
        get {
            guard let function = objectRef.onratechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onratechange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onratechange = .null
            }
        }
    }

    var onreset: EventHandler {
        get {
            guard let function = objectRef.onreset.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onreset = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onreset = .null
            }
        }
    }

    var onresize: EventHandler {
        get {
            guard let function = objectRef.onresize.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onresize = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onresize = .null
            }
        }
    }

    var onscroll: EventHandler {
        get {
            guard let function = objectRef.onscroll.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onscroll = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onscroll = .null
            }
        }
    }

    var onsecuritypolicyviolation: EventHandler {
        get {
            guard let function = objectRef.onsecuritypolicyviolation.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onsecuritypolicyviolation = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onsecuritypolicyviolation = .null
            }
        }
    }

    var onseeked: EventHandler {
        get {
            guard let function = objectRef.onseeked.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onseeked = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onseeked = .null
            }
        }
    }

    var onseeking: EventHandler {
        get {
            guard let function = objectRef.onseeking.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onseeking = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onseeking = .null
            }
        }
    }

    var onselect: EventHandler {
        get {
            guard let function = objectRef.onselect.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onselect = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onselect = .null
            }
        }
    }

    var onslotchange: EventHandler {
        get {
            guard let function = objectRef.onslotchange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onslotchange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onslotchange = .null
            }
        }
    }

    var onstalled: EventHandler {
        get {
            guard let function = objectRef.onstalled.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onstalled = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onstalled = .null
            }
        }
    }

    var onsubmit: EventHandler {
        get {
            guard let function = objectRef.onsubmit.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onsubmit = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onsubmit = .null
            }
        }
    }

    var onsuspend: EventHandler {
        get {
            guard let function = objectRef.onsuspend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onsuspend = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onsuspend = .null
            }
        }
    }

    var ontimeupdate: EventHandler {
        get {
            guard let function = objectRef.ontimeupdate.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ontimeupdate = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ontimeupdate = .null
            }
        }
    }

    var ontoggle: EventHandler {
        get {
            guard let function = objectRef.ontoggle.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.ontoggle = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.ontoggle = .null
            }
        }
    }

    var onvolumechange: EventHandler {
        get {
            guard let function = objectRef.onvolumechange.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onvolumechange = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onvolumechange = .null
            }
        }
    }

    var onwaiting: EventHandler {
        get {
            guard let function = objectRef.onwaiting.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onwaiting = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onwaiting = .null
            }
        }
    }

    var onwebkitanimationend: EventHandler {
        get {
            guard let function = objectRef.onwebkitanimationend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onwebkitanimationend = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onwebkitanimationend = .null
            }
        }
    }

    var onwebkitanimationiteration: EventHandler {
        get {
            guard let function = objectRef.onwebkitanimationiteration.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onwebkitanimationiteration = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onwebkitanimationiteration = .null
            }
        }
    }

    var onwebkitanimationstart: EventHandler {
        get {
            guard let function = objectRef.onwebkitanimationstart.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onwebkitanimationstart = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onwebkitanimationstart = .null
            }
        }
    }

    var onwebkittransitionend: EventHandler {
        get {
            guard let function = objectRef.onwebkittransitionend.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onwebkittransitionend = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onwebkittransitionend = .null
            }
        }
    }

    var onwheel: EventHandler {
        get {
            guard let function = objectRef.onwheel.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue() }
        }
        set {
            if let newValue = newValue {
                objectRef.onwheel = JSValue(from: JSClosure { arguments in
                    JSValue(from: newValue(arguments[0].fromJSValue()))
                })
            } else {
                objectRef.onwheel = .null
            }
        }
    }
}
