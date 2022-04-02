// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Window: EventTarget, GlobalEventHandlers, WindowEventHandlers, WindowOrWorkerGlobalScope, AnimationFrameProvider, WindowSessionStorage, WindowLocalStorage {
    override public class var constructor: JSFunction { JSObject.global[Strings.Window].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _orientation = ReadonlyAttribute(jsObject: jsObject, name: Strings.orientation)
        _onorientationchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onorientationchange)
        _attributionReporting = ReadonlyAttribute(jsObject: jsObject, name: Strings.attributionReporting)
        _cookieStore = ReadonlyAttribute(jsObject: jsObject, name: Strings.cookieStore)
        _screen = ReadonlyAttribute(jsObject: jsObject, name: Strings.screen)
        _innerWidth = ReadonlyAttribute(jsObject: jsObject, name: Strings.innerWidth)
        _innerHeight = ReadonlyAttribute(jsObject: jsObject, name: Strings.innerHeight)
        _scrollX = ReadonlyAttribute(jsObject: jsObject, name: Strings.scrollX)
        _pageXOffset = ReadonlyAttribute(jsObject: jsObject, name: Strings.pageXOffset)
        _scrollY = ReadonlyAttribute(jsObject: jsObject, name: Strings.scrollY)
        _pageYOffset = ReadonlyAttribute(jsObject: jsObject, name: Strings.pageYOffset)
        _screenX = ReadonlyAttribute(jsObject: jsObject, name: Strings.screenX)
        _screenLeft = ReadonlyAttribute(jsObject: jsObject, name: Strings.screenLeft)
        _screenY = ReadonlyAttribute(jsObject: jsObject, name: Strings.screenY)
        _screenTop = ReadonlyAttribute(jsObject: jsObject, name: Strings.screenTop)
        _outerWidth = ReadonlyAttribute(jsObject: jsObject, name: Strings.outerWidth)
        _outerHeight = ReadonlyAttribute(jsObject: jsObject, name: Strings.outerHeight)
        _devicePixelRatio = ReadonlyAttribute(jsObject: jsObject, name: Strings.devicePixelRatio)
        _event = ReadonlyAttribute(jsObject: jsObject, name: Strings.event)
        _window = ReadonlyAttribute(jsObject: jsObject, name: Strings.window)
        _self = ReadonlyAttribute(jsObject: jsObject, name: Strings._self)
        _document = ReadonlyAttribute(jsObject: jsObject, name: Strings.document)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _location = ReadonlyAttribute(jsObject: jsObject, name: Strings.location)
        _history = ReadonlyAttribute(jsObject: jsObject, name: Strings.history)
        _customElements = ReadonlyAttribute(jsObject: jsObject, name: Strings.customElements)
        _locationbar = ReadonlyAttribute(jsObject: jsObject, name: Strings.locationbar)
        _menubar = ReadonlyAttribute(jsObject: jsObject, name: Strings.menubar)
        _personalbar = ReadonlyAttribute(jsObject: jsObject, name: Strings.personalbar)
        _scrollbars = ReadonlyAttribute(jsObject: jsObject, name: Strings.scrollbars)
        _statusbar = ReadonlyAttribute(jsObject: jsObject, name: Strings.statusbar)
        _toolbar = ReadonlyAttribute(jsObject: jsObject, name: Strings.toolbar)
        _status = ReadWriteAttribute(jsObject: jsObject, name: Strings.status)
        _closed = ReadonlyAttribute(jsObject: jsObject, name: Strings.closed)
        _frames = ReadonlyAttribute(jsObject: jsObject, name: Strings.frames)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _top = ReadonlyAttribute(jsObject: jsObject, name: Strings.top)
        _opener = ReadWriteAttribute(jsObject: jsObject, name: Strings.opener)
        _parent = ReadonlyAttribute(jsObject: jsObject, name: Strings.parent)
        _frameElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.frameElement)
        _navigator = ReadonlyAttribute(jsObject: jsObject, name: Strings.navigator)
        _clientInformation = ReadonlyAttribute(jsObject: jsObject, name: Strings.clientInformation)
        _originAgentCluster = ReadonlyAttribute(jsObject: jsObject, name: Strings.originAgentCluster)
        _external = ReadonlyAttribute(jsObject: jsObject, name: Strings.external)
        _onappinstalled = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onappinstalled)
        _onbeforeinstallprompt = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onbeforeinstallprompt)
        _navigation = ReadonlyAttribute(jsObject: jsObject, name: Strings.navigation)
        _ondeviceorientation = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ondeviceorientation)
        _ondeviceorientationabsolute = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ondeviceorientationabsolute)
        _oncompassneedscalibration = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.oncompassneedscalibration)
        _ondevicemotion = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ondevicemotion)
        _portalHost = ReadonlyAttribute(jsObject: jsObject, name: Strings.portalHost)
        _speechSynthesis = ReadonlyAttribute(jsObject: jsObject, name: Strings.speechSynthesis)
        _visualViewport = ReadonlyAttribute(jsObject: jsObject, name: Strings.visualViewport)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var orientation: Int16

    @ClosureAttribute.Optional1
    public var onorientationchange: EventHandler

    @ReadonlyAttribute
    public var attributionReporting: AttributionReporting

    @ReadonlyAttribute
    public var cookieStore: CookieStore

    public func navigate(dir: SpatialNavigationDirection) {
        _ = jsObject[Strings.navigate]!(dir.jsValue())
    }

    public func matchMedia(query: String) -> MediaQueryList {
        jsObject[Strings.matchMedia]!(query.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var screen: Screen

    public func moveTo(x: Int32, y: Int32) {
        _ = jsObject[Strings.moveTo]!(x.jsValue(), y.jsValue())
    }

    public func moveBy(x: Int32, y: Int32) {
        _ = jsObject[Strings.moveBy]!(x.jsValue(), y.jsValue())
    }

    public func resizeTo(width: Int32, height: Int32) {
        _ = jsObject[Strings.resizeTo]!(width.jsValue(), height.jsValue())
    }

    public func resizeBy(x: Int32, y: Int32) {
        _ = jsObject[Strings.resizeBy]!(x.jsValue(), y.jsValue())
    }

    @ReadonlyAttribute
    public var innerWidth: Int32

    @ReadonlyAttribute
    public var innerHeight: Int32

    @ReadonlyAttribute
    public var scrollX: Double

    @ReadonlyAttribute
    public var pageXOffset: Double

    @ReadonlyAttribute
    public var scrollY: Double

    @ReadonlyAttribute
    public var pageYOffset: Double

    public func scroll(options: ScrollToOptions? = nil) {
        _ = jsObject[Strings.scroll]!(options?.jsValue() ?? .undefined)
    }

    public func scroll(x: Double, y: Double) {
        _ = jsObject[Strings.scroll]!(x.jsValue(), y.jsValue())
    }

    public func scrollTo(options: ScrollToOptions? = nil) {
        _ = jsObject[Strings.scrollTo]!(options?.jsValue() ?? .undefined)
    }

    public func scrollTo(x: Double, y: Double) {
        _ = jsObject[Strings.scrollTo]!(x.jsValue(), y.jsValue())
    }

    public func scrollBy(options: ScrollToOptions? = nil) {
        _ = jsObject[Strings.scrollBy]!(options?.jsValue() ?? .undefined)
    }

    public func scrollBy(x: Double, y: Double) {
        _ = jsObject[Strings.scrollBy]!(x.jsValue(), y.jsValue())
    }

    @ReadonlyAttribute
    public var screenX: Int32

    @ReadonlyAttribute
    public var screenLeft: Int32

    @ReadonlyAttribute
    public var screenY: Int32

    @ReadonlyAttribute
    public var screenTop: Int32

    @ReadonlyAttribute
    public var outerWidth: Int32

    @ReadonlyAttribute
    public var outerHeight: Int32

    @ReadonlyAttribute
    public var devicePixelRatio: Double

    public func getComputedStyle(elt: Element, pseudoElt: String? = nil) -> CSSStyleDeclaration {
        jsObject[Strings.getComputedStyle]!(elt.jsValue(), pseudoElt?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func getDigitalGoodsService(serviceProvider: String) -> JSPromise {
        jsObject[Strings.getDigitalGoodsService]!(serviceProvider.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getDigitalGoodsService(serviceProvider: String) async throws -> DigitalGoodsService {
        let _promise: JSPromise = jsObject[Strings.getDigitalGoodsService]!(serviceProvider.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var event: __UNSUPPORTED_UNION__

    public func showOpenFilePicker(options: OpenFilePickerOptions? = nil) -> JSPromise {
        jsObject[Strings.showOpenFilePicker]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func showOpenFilePicker(options: OpenFilePickerOptions? = nil) async throws -> [FileSystemFileHandle] {
        let _promise: JSPromise = jsObject[Strings.showOpenFilePicker]!(options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func showSaveFilePicker(options: SaveFilePickerOptions? = nil) -> JSPromise {
        jsObject[Strings.showSaveFilePicker]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func showSaveFilePicker(options: SaveFilePickerOptions? = nil) async throws -> FileSystemFileHandle {
        let _promise: JSPromise = jsObject[Strings.showSaveFilePicker]!(options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func showDirectoryPicker(options: DirectoryPickerOptions? = nil) -> JSPromise {
        jsObject[Strings.showDirectoryPicker]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func showDirectoryPicker(options: DirectoryPickerOptions? = nil) async throws -> FileSystemDirectoryHandle {
        let _promise: JSPromise = jsObject[Strings.showDirectoryPicker]!(options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

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
        _ = jsObject[Strings.close]!()
    }

    @ReadonlyAttribute
    public var closed: Bool

    public func stop() {
        _ = jsObject[Strings.stop]!()
    }

    public func focus() {
        _ = jsObject[Strings.focus]!()
    }

    public func blur() {
        _ = jsObject[Strings.blur]!()
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
        jsObject[Strings.open]!(url?.jsValue() ?? .undefined, target?.jsValue() ?? .undefined, features?.jsValue() ?? .undefined).fromJSValue()!
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
        _ = jsObject[Strings.alert]!()
    }

    public func alert(message: String) {
        _ = jsObject[Strings.alert]!(message.jsValue())
    }

    public func confirm(message: String? = nil) -> Bool {
        jsObject[Strings.confirm]!(message?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func prompt(message: String? = nil, default: String? = nil) -> String? {
        jsObject[Strings.prompt]!(message?.jsValue() ?? .undefined, `default`?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func print() {
        _ = jsObject[Strings.print]!()
    }

    public func postMessage(message: JSValue, targetOrigin: String, transfer: [JSObject]? = nil) {
        _ = jsObject[Strings.postMessage]!(message.jsValue(), targetOrigin.jsValue(), transfer?.jsValue() ?? .undefined)
    }

    public func postMessage(message: JSValue, options: WindowPostMessageOptions? = nil) {
        _ = jsObject[Strings.postMessage]!(message.jsValue(), options?.jsValue() ?? .undefined)
    }

    public func captureEvents() {
        _ = jsObject[Strings.captureEvents]!()
    }

    public func releaseEvents() {
        _ = jsObject[Strings.releaseEvents]!()
    }

    @ReadonlyAttribute
    public var external: External

    @ClosureAttribute.Optional1
    public var onappinstalled: EventHandler

    @ClosureAttribute.Optional1
    public var onbeforeinstallprompt: EventHandler

    @ReadonlyAttribute
    public var navigation: Navigation

    @ClosureAttribute.Optional1
    public var ondeviceorientation: EventHandler

    @ClosureAttribute.Optional1
    public var ondeviceorientationabsolute: EventHandler

    @ClosureAttribute.Optional1
    public var oncompassneedscalibration: EventHandler

    @ClosureAttribute.Optional1
    public var ondevicemotion: EventHandler

    @ReadonlyAttribute
    public var portalHost: PortalHost?

    // XXX: member 'requestIdleCallback' is ignored

    public func cancelIdleCallback(handle: UInt32) {
        _ = jsObject[Strings.cancelIdleCallback]!(handle.jsValue())
    }

    public func getSelection() -> Selection? {
        jsObject[Strings.getSelection]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var speechSynthesis: SpeechSynthesis

    @ReadonlyAttribute
    public var visualViewport: VisualViewport
}
