// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Document: Node, NonElementParentNode, DocumentOrShadowRoot, ParentNode, XPathEvaluatorBase, GeometryUtils, FontFaceSource, GlobalEventHandlers, DocumentAndElementEventHandlers {
    override public class var constructor: JSFunction { JSObject.global[Strings.Document].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _implementation = ReadonlyAttribute(jsObject: jsObject, name: Strings.implementation)
        _URL = ReadonlyAttribute(jsObject: jsObject, name: Strings.URL)
        _documentURI = ReadonlyAttribute(jsObject: jsObject, name: Strings.documentURI)
        _compatMode = ReadonlyAttribute(jsObject: jsObject, name: Strings.compatMode)
        _characterSet = ReadonlyAttribute(jsObject: jsObject, name: Strings.characterSet)
        _charset = ReadonlyAttribute(jsObject: jsObject, name: Strings.charset)
        _inputEncoding = ReadonlyAttribute(jsObject: jsObject, name: Strings.inputEncoding)
        _contentType = ReadonlyAttribute(jsObject: jsObject, name: Strings.contentType)
        _doctype = ReadonlyAttribute(jsObject: jsObject, name: Strings.doctype)
        _documentElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.documentElement)
        _onpointerlockchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onpointerlockchange)
        _onpointerlockerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onpointerlockerror)
        _scrollingElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.scrollingElement)
        _permissionsPolicy = ReadonlyAttribute(jsObject: jsObject, name: Strings.permissionsPolicy)
        _location = ReadonlyAttribute(jsObject: jsObject, name: Strings.location)
        _domain = ReadWriteAttribute(jsObject: jsObject, name: Strings.domain)
        _referrer = ReadonlyAttribute(jsObject: jsObject, name: Strings.referrer)
        _cookie = ReadWriteAttribute(jsObject: jsObject, name: Strings.cookie)
        _lastModified = ReadonlyAttribute(jsObject: jsObject, name: Strings.lastModified)
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: Strings.readyState)
        _title = ReadWriteAttribute(jsObject: jsObject, name: Strings.title)
        _dir = ReadWriteAttribute(jsObject: jsObject, name: Strings.dir)
        _body = ReadWriteAttribute(jsObject: jsObject, name: Strings.body)
        _head = ReadonlyAttribute(jsObject: jsObject, name: Strings.head)
        _images = ReadonlyAttribute(jsObject: jsObject, name: Strings.images)
        _embeds = ReadonlyAttribute(jsObject: jsObject, name: Strings.embeds)
        _plugins = ReadonlyAttribute(jsObject: jsObject, name: Strings.plugins)
        _links = ReadonlyAttribute(jsObject: jsObject, name: Strings.links)
        _forms = ReadonlyAttribute(jsObject: jsObject, name: Strings.forms)
        _scripts = ReadonlyAttribute(jsObject: jsObject, name: Strings.scripts)
        _currentScript = ReadonlyAttribute(jsObject: jsObject, name: Strings.currentScript)
        _defaultView = ReadonlyAttribute(jsObject: jsObject, name: Strings.defaultView)
        _designMode = ReadWriteAttribute(jsObject: jsObject, name: Strings.designMode)
        _hidden = ReadonlyAttribute(jsObject: jsObject, name: Strings.hidden)
        _visibilityState = ReadonlyAttribute(jsObject: jsObject, name: Strings.visibilityState)
        _onreadystatechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onreadystatechange)
        _onvisibilitychange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onvisibilitychange)
        _fgColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.fgColor)
        _linkColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.linkColor)
        _vlinkColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.vlinkColor)
        _alinkColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.alinkColor)
        _bgColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.bgColor)
        _anchors = ReadonlyAttribute(jsObject: jsObject, name: Strings.anchors)
        _applets = ReadonlyAttribute(jsObject: jsObject, name: Strings.applets)
        _all = ReadonlyAttribute(jsObject: jsObject, name: Strings.all)
        _fragmentDirective = ReadonlyAttribute(jsObject: jsObject, name: Strings.fragmentDirective)
        _timeline = ReadonlyAttribute(jsObject: jsObject, name: Strings.timeline)
        _namedFlows = ReadonlyAttribute(jsObject: jsObject, name: Strings.namedFlows)
        _rootElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.rootElement)
        _pictureInPictureEnabled = ReadonlyAttribute(jsObject: jsObject, name: Strings.pictureInPictureEnabled)
        _onfreeze = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onfreeze)
        _onresume = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onresume)
        _wasDiscarded = ReadonlyAttribute(jsObject: jsObject, name: Strings.wasDiscarded)
        _fullscreenEnabled = ReadonlyAttribute(jsObject: jsObject, name: Strings.fullscreenEnabled)
        _fullscreen = ReadonlyAttribute(jsObject: jsObject, name: Strings.fullscreen)
        _onfullscreenchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onfullscreenchange)
        _onfullscreenerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onfullscreenerror)
        super.init(unsafelyWrapping: jsObject)
    }

    public func measureElement(element: Element) -> FontMetrics {
        jsObject[Strings.measureElement]!(element.jsValue()).fromJSValue()!
    }

    public func measureText(text: String, styleMap: StylePropertyMapReadOnly) -> FontMetrics {
        jsObject[Strings.measureText]!(text.jsValue(), styleMap.jsValue()).fromJSValue()!
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadonlyAttribute
    public var implementation: DOMImplementation

    @ReadonlyAttribute
    public var URL: String

    @ReadonlyAttribute
    public var documentURI: String

    @ReadonlyAttribute
    public var compatMode: String

    @ReadonlyAttribute
    public var characterSet: String

    @ReadonlyAttribute
    public var charset: String

    @ReadonlyAttribute
    public var inputEncoding: String

    @ReadonlyAttribute
    public var contentType: String

    @ReadonlyAttribute
    public var doctype: DocumentType?

    @ReadonlyAttribute
    public var documentElement: Element?

    public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        jsObject[Strings.getElementsByTagName]!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        jsObject[Strings.getElementsByTagNameNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        jsObject[Strings.getElementsByClassName]!(classNames.jsValue()).fromJSValue()!
    }

    public func createElement(localName: String, options: __UNSUPPORTED_UNION__? = nil) -> Element {
        jsObject[Strings.createElement]!(localName.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func createElementNS(namespace: String?, qualifiedName: String, options: __UNSUPPORTED_UNION__? = nil) -> Element {
        jsObject[Strings.createElementNS]!(namespace.jsValue(), qualifiedName.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func createDocumentFragment() -> DocumentFragment {
        jsObject[Strings.createDocumentFragment]!().fromJSValue()!
    }

    public func createTextNode(data: String) -> Text {
        jsObject[Strings.createTextNode]!(data.jsValue()).fromJSValue()!
    }

    public func createCDATASection(data: String) -> CDATASection {
        jsObject[Strings.createCDATASection]!(data.jsValue()).fromJSValue()!
    }

    public func createComment(data: String) -> Comment {
        jsObject[Strings.createComment]!(data.jsValue()).fromJSValue()!
    }

    public func createProcessingInstruction(target: String, data: String) -> ProcessingInstruction {
        jsObject[Strings.createProcessingInstruction]!(target.jsValue(), data.jsValue()).fromJSValue()!
    }

    public func importNode(node: Node, deep: Bool? = nil) -> Node {
        jsObject[Strings.importNode]!(node.jsValue(), deep?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func adoptNode(node: Node) -> Node {
        jsObject[Strings.adoptNode]!(node.jsValue()).fromJSValue()!
    }

    public func createAttribute(localName: String) -> Attr {
        jsObject[Strings.createAttribute]!(localName.jsValue()).fromJSValue()!
    }

    public func createAttributeNS(namespace: String?, qualifiedName: String) -> Attr {
        jsObject[Strings.createAttributeNS]!(namespace.jsValue(), qualifiedName.jsValue()).fromJSValue()!
    }

    public func createEvent(interface: String) -> Event {
        jsObject[Strings.createEvent]!(interface.jsValue()).fromJSValue()!
    }

    public func createRange() -> Range {
        jsObject[Strings.createRange]!().fromJSValue()!
    }

    // XXX: member 'createNodeIterator' is ignored

    // XXX: member 'createTreeWalker' is ignored

    @ClosureAttribute.Optional1
    public var onpointerlockchange: EventHandler

    @ClosureAttribute.Optional1
    public var onpointerlockerror: EventHandler

    public func exitPointerLock() {
        _ = jsObject[Strings.exitPointerLock]!()
    }

    public func elementFromPoint(x: Double, y: Double) -> Element? {
        jsObject[Strings.elementFromPoint]!(x.jsValue(), y.jsValue()).fromJSValue()!
    }

    public func elementsFromPoint(x: Double, y: Double) -> [Element] {
        jsObject[Strings.elementsFromPoint]!(x.jsValue(), y.jsValue()).fromJSValue()!
    }

    public func caretPositionFromPoint(x: Double, y: Double) -> CaretPosition? {
        jsObject[Strings.caretPositionFromPoint]!(x.jsValue(), y.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var scrollingElement: Element?

    @ReadonlyAttribute
    public var permissionsPolicy: PermissionsPolicy

    public func hasStorageAccess() -> JSPromise {
        jsObject[Strings.hasStorageAccess]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func hasStorageAccess() async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.hasStorageAccess]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func requestStorageAccess() -> JSPromise {
        jsObject[Strings.requestStorageAccess]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func requestStorageAccess() async throws {
        let _promise: JSPromise = jsObject[Strings.requestStorageAccess]!().fromJSValue()!
        _ = try await _promise.get()
    }

    @ReadonlyAttribute
    public var location: Location?

    @ReadWriteAttribute
    public var domain: String

    @ReadonlyAttribute
    public var referrer: String

    @ReadWriteAttribute
    public var cookie: String

    @ReadonlyAttribute
    public var lastModified: String

    @ReadonlyAttribute
    public var readyState: DocumentReadyState

    public subscript(key: String) -> JSObject {
        jsObject[key].fromJSValue()!
    }

    @ReadWriteAttribute
    public var title: String

    @ReadWriteAttribute
    public var dir: String

    @ReadWriteAttribute
    public var body: HTMLElement?

    @ReadonlyAttribute
    public var head: HTMLHeadElement?

    @ReadonlyAttribute
    public var images: HTMLCollection

    @ReadonlyAttribute
    public var embeds: HTMLCollection

    @ReadonlyAttribute
    public var plugins: HTMLCollection

    @ReadonlyAttribute
    public var links: HTMLCollection

    @ReadonlyAttribute
    public var forms: HTMLCollection

    @ReadonlyAttribute
    public var scripts: HTMLCollection

    public func getElementsByName(elementName: String) -> NodeList {
        jsObject[Strings.getElementsByName]!(elementName.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var currentScript: HTMLOrSVGScriptElement?

    public func open(unused1: String? = nil, unused2: String? = nil) -> Self {
        jsObject[Strings.open]!(unused1?.jsValue() ?? .undefined, unused2?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func open(url: String, name: String, features: String) -> WindowProxy? {
        jsObject[Strings.open]!(url.jsValue(), name.jsValue(), features.jsValue()).fromJSValue()!
    }

    public func close() {
        _ = jsObject[Strings.close]!()
    }

    public func write(text: String...) {
        _ = jsObject[Strings.write]!(text.jsValue())
    }

    public func writeln(text: String...) {
        _ = jsObject[Strings.writeln]!(text.jsValue())
    }

    @ReadonlyAttribute
    public var defaultView: WindowProxy?

    public func hasFocus() -> Bool {
        jsObject[Strings.hasFocus]!().fromJSValue()!
    }

    @ReadWriteAttribute
    public var designMode: String

    public func execCommand(commandId: String, showUI: Bool? = nil, value: String? = nil) -> Bool {
        jsObject[Strings.execCommand]!(commandId.jsValue(), showUI?.jsValue() ?? .undefined, value?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func queryCommandEnabled(commandId: String) -> Bool {
        jsObject[Strings.queryCommandEnabled]!(commandId.jsValue()).fromJSValue()!
    }

    public func queryCommandIndeterm(commandId: String) -> Bool {
        jsObject[Strings.queryCommandIndeterm]!(commandId.jsValue()).fromJSValue()!
    }

    public func queryCommandState(commandId: String) -> Bool {
        jsObject[Strings.queryCommandState]!(commandId.jsValue()).fromJSValue()!
    }

    public func queryCommandSupported(commandId: String) -> Bool {
        jsObject[Strings.queryCommandSupported]!(commandId.jsValue()).fromJSValue()!
    }

    public func queryCommandValue(commandId: String) -> String {
        jsObject[Strings.queryCommandValue]!(commandId.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var hidden: Bool

    @ReadonlyAttribute
    public var visibilityState: DocumentVisibilityState

    @ClosureAttribute.Optional1
    public var onreadystatechange: EventHandler

    @ClosureAttribute.Optional1
    public var onvisibilitychange: EventHandler

    @ReadWriteAttribute
    public var fgColor: String

    @ReadWriteAttribute
    public var linkColor: String

    @ReadWriteAttribute
    public var vlinkColor: String

    @ReadWriteAttribute
    public var alinkColor: String

    @ReadWriteAttribute
    public var bgColor: String

    @ReadonlyAttribute
    public var anchors: HTMLCollection

    @ReadonlyAttribute
    public var applets: HTMLCollection

    public func clear() {
        _ = jsObject[Strings.clear]!()
    }

    public func captureEvents() {
        _ = jsObject[Strings.captureEvents]!()
    }

    public func releaseEvents() {
        _ = jsObject[Strings.releaseEvents]!()
    }

    @ReadonlyAttribute
    public var all: HTMLAllCollection

    @ReadonlyAttribute
    public var fragmentDirective: FragmentDirective

    @ReadonlyAttribute
    public var timeline: DocumentTimeline

    @ReadonlyAttribute
    public var namedFlows: NamedFlowMap

    @ReadonlyAttribute
    public var rootElement: SVGSVGElement?

    @ReadonlyAttribute
    public var pictureInPictureEnabled: Bool

    public func exitPictureInPicture() -> JSPromise {
        jsObject[Strings.exitPictureInPicture]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func exitPictureInPicture() async throws {
        let _promise: JSPromise = jsObject[Strings.exitPictureInPicture]!().fromJSValue()!
        _ = try await _promise.get()
    }

    @ClosureAttribute.Optional1
    public var onfreeze: EventHandler

    @ClosureAttribute.Optional1
    public var onresume: EventHandler

    @ReadonlyAttribute
    public var wasDiscarded: Bool

    public func getSelection() -> Selection? {
        jsObject[Strings.getSelection]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var fullscreenEnabled: Bool

    @ReadonlyAttribute
    public var fullscreen: Bool

    public func exitFullscreen() -> JSPromise {
        jsObject[Strings.exitFullscreen]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func exitFullscreen() async throws {
        let _promise: JSPromise = jsObject[Strings.exitFullscreen]!().fromJSValue()!
        _ = try await _promise.get()
    }

    @ClosureAttribute.Optional1
    public var onfullscreenchange: EventHandler

    @ClosureAttribute.Optional1
    public var onfullscreenerror: EventHandler
}
