
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol GlobalEventHandlers: JSBridgedClass {}

public extension GlobalEventHandlers {
    var onabort: EventHandler {
        get {
            guard let function = jsObject.onabort.function else {
                return nil
            }
            return { arg0 in function(arg0).fromJSValue()! }
        }
        set {
            if let newValue = newValue {
                jsObject.onabort = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onauxclick = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onblur = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.oncancel = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.oncanplay = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.oncanplaythrough = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onchange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onclick = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onclose = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.oncontextmenu = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.oncuechange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondblclick = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondrag = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondragend = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondragenter = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondragexit = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondragleave = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondragover = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondragstart = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondrop = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ondurationchange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onemptied = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onended = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onerror = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!, arguments[1].fromJSValue()!, arguments[2].fromJSValue()!, arguments[3].fromJSValue()!, arguments[4].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onfocus = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onformdata = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.oninput = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.oninvalid = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onkeydown = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onkeypress = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onkeyup = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onload = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onloadeddata = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onloadedmetadata = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onloadstart = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onmousedown = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onmouseenter = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onmouseleave = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onmousemove = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onmouseout = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onmouseover = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onmouseup = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onpause = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onplay = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onplaying = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onprogress = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onratechange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onreset = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onresize = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onscroll = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onsecuritypolicyviolation = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onseeked = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onseeking = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onselect = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onslotchange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onstalled = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onsubmit = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onsuspend = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ontimeupdate = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.ontoggle = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onvolumechange = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onwaiting = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onwebkitanimationend = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onwebkitanimationiteration = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onwebkitanimationstart = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onwebkittransitionend = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
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
                jsObject.onwheel = JSClosure { arguments in
                    newValue(arguments[0].fromJSValue()!).jsValue()
                }.jsValue()
            } else {
                jsObject.onwheel = .null
            }
        }
    }
}
