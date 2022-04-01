// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Window: EventTarget, GlobalEventHandlers, WindowEventHandlers, WindowOrWorkerGlobalScope, AnimationFrameProvider, WindowSessionStorage, WindowLocalStorage {
    override public class var constructor: JSFunction { JSObject.global.Window.function! }

    private enum Keys {
        static let alert: JSString = "alert"
        static let blur: JSString = "blur"
        static let captureEvents: JSString = "captureEvents"
        static let clientInformation: JSString = "clientInformation"
        static let close: JSString = "close"
        static let closed: JSString = "closed"
        static let confirm: JSString = "confirm"
        static let customElements: JSString = "customElements"
        static let document: JSString = "document"
        static let event: JSString = "event"
        static let external: JSString = "external"
        static let focus: JSString = "focus"
        static let frameElement: JSString = "frameElement"
        static let frames: JSString = "frames"
        static let getComputedStyle: JSString = "getComputedStyle"
        static let history: JSString = "history"
        static let length: JSString = "length"
        static let location: JSString = "location"
        static let locationbar: JSString = "locationbar"
        static let menubar: JSString = "menubar"
        static let name: JSString = "name"
        static let navigator: JSString = "navigator"
        static let open: JSString = "open"
        static let opener: JSString = "opener"
        static let originAgentCluster: JSString = "originAgentCluster"
        static let parent: JSString = "parent"
        static let personalbar: JSString = "personalbar"
        static let postMessage: JSString = "postMessage"
        static let print: JSString = "print"
        static let prompt: JSString = "prompt"
        static let releaseEvents: JSString = "releaseEvents"
        static let scrollbars: JSString = "scrollbars"
        static let `self`: JSString = "self"
        static let status: JSString = "status"
        static let statusbar: JSString = "statusbar"
        static let stop: JSString = "stop"
        static let toolbar: JSString = "toolbar"
        static let top: JSString = "top"
        static let window: JSString = "window"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _event = ReadonlyAttribute(jsObject: jsObject, name: Keys.event)
        _window = ReadonlyAttribute(jsObject: jsObject, name: Keys.window)
        _self = ReadonlyAttribute(jsObject: jsObject, name: Keys.self)
        _document = ReadonlyAttribute(jsObject: jsObject, name: Keys.document)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _location = ReadonlyAttribute(jsObject: jsObject, name: Keys.location)
        _history = ReadonlyAttribute(jsObject: jsObject, name: Keys.history)
        _customElements = ReadonlyAttribute(jsObject: jsObject, name: Keys.customElements)
        _locationbar = ReadonlyAttribute(jsObject: jsObject, name: Keys.locationbar)
        _menubar = ReadonlyAttribute(jsObject: jsObject, name: Keys.menubar)
        _personalbar = ReadonlyAttribute(jsObject: jsObject, name: Keys.personalbar)
        _scrollbars = ReadonlyAttribute(jsObject: jsObject, name: Keys.scrollbars)
        _statusbar = ReadonlyAttribute(jsObject: jsObject, name: Keys.statusbar)
        _toolbar = ReadonlyAttribute(jsObject: jsObject, name: Keys.toolbar)
        _status = ReadWriteAttribute(jsObject: jsObject, name: Keys.status)
        _closed = ReadonlyAttribute(jsObject: jsObject, name: Keys.closed)
        _frames = ReadonlyAttribute(jsObject: jsObject, name: Keys.frames)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        _top = ReadonlyAttribute(jsObject: jsObject, name: Keys.top)
        _opener = ReadWriteAttribute(jsObject: jsObject, name: Keys.opener)
        _parent = ReadonlyAttribute(jsObject: jsObject, name: Keys.parent)
        _frameElement = ReadonlyAttribute(jsObject: jsObject, name: Keys.frameElement)
        _navigator = ReadonlyAttribute(jsObject: jsObject, name: Keys.navigator)
        _clientInformation = ReadonlyAttribute(jsObject: jsObject, name: Keys.clientInformation)
        _originAgentCluster = ReadonlyAttribute(jsObject: jsObject, name: Keys.originAgentCluster)
        _external = ReadonlyAttribute(jsObject: jsObject, name: Keys.external)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var event: __UNSUPPORTED_UNION__

    @ReadonlyAttribute
    public var window: WindowProxy

    @ReadonlyAttribute
    public var `self`: WindowProxy

    @ReadonlyAttribute
    public var document: Document

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var location: Location

    @ReadonlyAttribute
    public var history: History

    @ReadonlyAttribute
    public var customElements: CustomElementRegistry

    @ReadonlyAttribute
    public var locationbar: BarProp

    @ReadonlyAttribute
    public var menubar: BarProp

    @ReadonlyAttribute
    public var personalbar: BarProp

    @ReadonlyAttribute
    public var scrollbars: BarProp

    @ReadonlyAttribute
    public var statusbar: BarProp

    @ReadonlyAttribute
    public var toolbar: BarProp

    @ReadWriteAttribute
    public var status: String

    public func close() {
        jsObject[Keys.close]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var closed: Bool

    public func stop() {
        jsObject[Keys.stop]!().fromJSValue()!
    }

    public func focus() {
        jsObject[Keys.focus]!().fromJSValue()!
    }

    public func blur() {
        jsObject[Keys.blur]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var frames: WindowProxy

    @ReadonlyAttribute
    public var length: UInt32

    @ReadonlyAttribute
    public var top: WindowProxy?

    @ReadWriteAttribute
    public var opener: JSValue

    @ReadonlyAttribute
    public var parent: WindowProxy?

    @ReadonlyAttribute
    public var frameElement: Element?

    public func open(url: String? = nil, target: String? = nil, features: String? = nil) -> WindowProxy? {
        jsObject[Keys.open]!(url?.jsValue() ?? .undefined, target?.jsValue() ?? .undefined, features?.jsValue() ?? .undefined).fromJSValue()!
    }

    public subscript(key: String) -> JSObject {
        jsObject[key].fromJSValue()!
    }

    @ReadonlyAttribute
    public var navigator: Navigator

    @ReadonlyAttribute
    public var clientInformation: Navigator

    @ReadonlyAttribute
    public var originAgentCluster: Bool

    public func alert() {
        jsObject[Keys.alert]!().fromJSValue()!
    }

    public func alert(message: String) {
        jsObject[Keys.alert]!(message.jsValue()).fromJSValue()!
    }

    public func confirm(message: String? = nil) -> Bool {
        jsObject[Keys.confirm]!(message?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func prompt(message: String? = nil, default: String? = nil) -> String? {
        jsObject[Keys.prompt]!(message?.jsValue() ?? .undefined, `default`?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func print() {
        jsObject[Keys.print]!().fromJSValue()!
    }

    public func postMessage(message: JSValue, targetOrigin: String, transfer: [JSObject]? = nil) {
        jsObject[Keys.postMessage]!(message.jsValue(), targetOrigin.jsValue(), transfer?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func postMessage(message: JSValue, options: WindowPostMessageOptions? = nil) {
        jsObject[Keys.postMessage]!(message.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func captureEvents() {
        jsObject[Keys.captureEvents]!().fromJSValue()!
    }

    public func releaseEvents() {
        jsObject[Keys.releaseEvents]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var external: External

    public func getComputedStyle(elt: Element, pseudoElt: String? = nil) -> CSSStyleDeclaration {
        jsObject[Keys.getComputedStyle]!(elt.jsValue(), pseudoElt?.jsValue() ?? .undefined).fromJSValue()!
    }
}
