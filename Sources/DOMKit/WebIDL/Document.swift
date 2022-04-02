// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Document: Node, FontFaceSource, GeometryUtils, NonElementParentNode, DocumentOrShadowRoot, ParentNode, XPathEvaluatorBase, GlobalEventHandlers, DocumentAndElementEventHandlers {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.Document].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _rootElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.rootElement)
        _namedFlows = ReadonlyAttribute(jsObject: jsObject, name: Strings.namedFlows)
        _scrollingElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.scrollingElement)
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
        _fullscreenEnabled = ReadonlyAttribute(jsObject: jsObject, name: Strings.fullscreenEnabled)
        _fullscreen = ReadonlyAttribute(jsObject: jsObject, name: Strings.fullscreen)
        _onfullscreenchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onfullscreenchange)
        _onfullscreenerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onfullscreenerror)
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
        _onreadystatechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onreadystatechange)
        _onvisibilitychange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onvisibilitychange)
        _fgColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.fgColor)
        _linkColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.linkColor)
        _vlinkColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.vlinkColor)
        _alinkColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.alinkColor)
        _bgColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.bgColor)
        _anchors = ReadonlyAttribute(jsObject: jsObject, name: Strings.anchors)
        _applets = ReadonlyAttribute(jsObject: jsObject, name: Strings.applets)
        _all = ReadonlyAttribute(jsObject: jsObject, name: Strings.all)
        _onfreeze = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onfreeze)
        _onresume = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onresume)
        _wasDiscarded = ReadonlyAttribute(jsObject: jsObject, name: Strings.wasDiscarded)
        _permissionsPolicy = ReadonlyAttribute(jsObject: jsObject, name: Strings.permissionsPolicy)
        _pictureInPictureEnabled = ReadonlyAttribute(jsObject: jsObject, name: Strings.pictureInPictureEnabled)
        _onpointerlockchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onpointerlockchange)
        _onpointerlockerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onpointerlockerror)
        _fragmentDirective = ReadonlyAttribute(jsObject: jsObject, name: Strings.fragmentDirective)
        _timeline = ReadonlyAttribute(jsObject: jsObject, name: Strings.timeline)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var rootElement: SVGSVGElement?

    @ReadonlyAttribute
    public var namedFlows: NamedFlowMap

    @inlinable public func elementFromPoint(x: Double, y: Double) -> Element? {
        let this = jsObject
        return this[Strings.elementFromPoint].function!(this: this, arguments: [x.jsValue(), y.jsValue()]).fromJSValue()!
    }

    @inlinable public func elementsFromPoint(x: Double, y: Double) -> [Element] {
        let this = jsObject
        return this[Strings.elementsFromPoint].function!(this: this, arguments: [x.jsValue(), y.jsValue()]).fromJSValue()!
    }

    @inlinable public func caretPositionFromPoint(x: Double, y: Double) -> CaretPosition? {
        let this = jsObject
        return this[Strings.caretPositionFromPoint].function!(this: this, arguments: [x.jsValue(), y.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var scrollingElement: Element?

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
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

    @inlinable public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        let this = jsObject
        return this[Strings.getElementsByTagName].function!(this: this, arguments: [qualifiedName.jsValue()]).fromJSValue()!
    }

    @inlinable public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        let this = jsObject
        return this[Strings.getElementsByTagNameNS].function!(this: this, arguments: [namespace.jsValue(), localName.jsValue()]).fromJSValue()!
    }

    @inlinable public func getElementsByClassName(classNames: String) -> HTMLCollection {
        let this = jsObject
        return this[Strings.getElementsByClassName].function!(this: this, arguments: [classNames.jsValue()]).fromJSValue()!
    }

    @inlinable public func createElement(localName: String, options: ElementCreationOptions_or_String? = nil) -> Element {
        let this = jsObject
        return this[Strings.createElement].function!(this: this, arguments: [localName.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func createElementNS(namespace: String?, qualifiedName: String, options: ElementCreationOptions_or_String? = nil) -> Element {
        let this = jsObject
        return this[Strings.createElementNS].function!(this: this, arguments: [namespace.jsValue(), qualifiedName.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func createDocumentFragment() -> DocumentFragment {
        let this = jsObject
        return this[Strings.createDocumentFragment].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func createTextNode(data: String) -> Text {
        let this = jsObject
        return this[Strings.createTextNode].function!(this: this, arguments: [data.jsValue()]).fromJSValue()!
    }

    @inlinable public func createCDATASection(data: String) -> CDATASection {
        let this = jsObject
        return this[Strings.createCDATASection].function!(this: this, arguments: [data.jsValue()]).fromJSValue()!
    }

    @inlinable public func createComment(data: String) -> Comment {
        let this = jsObject
        return this[Strings.createComment].function!(this: this, arguments: [data.jsValue()]).fromJSValue()!
    }

    @inlinable public func createProcessingInstruction(target: String, data: String) -> ProcessingInstruction {
        let this = jsObject
        return this[Strings.createProcessingInstruction].function!(this: this, arguments: [target.jsValue(), data.jsValue()]).fromJSValue()!
    }

    @inlinable public func importNode(node: Node, deep: Bool? = nil) -> Node {
        let this = jsObject
        return this[Strings.importNode].function!(this: this, arguments: [node.jsValue(), deep?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func adoptNode(node: Node) -> Node {
        let this = jsObject
        return this[Strings.adoptNode].function!(this: this, arguments: [node.jsValue()]).fromJSValue()!
    }

    @inlinable public func createAttribute(localName: String) -> Attr {
        let this = jsObject
        return this[Strings.createAttribute].function!(this: this, arguments: [localName.jsValue()]).fromJSValue()!
    }

    @inlinable public func createAttributeNS(namespace: String?, qualifiedName: String) -> Attr {
        let this = jsObject
        return this[Strings.createAttributeNS].function!(this: this, arguments: [namespace.jsValue(), qualifiedName.jsValue()]).fromJSValue()!
    }

    @inlinable public func createEvent(interface: String) -> Event {
        let this = jsObject
        return this[Strings.createEvent].function!(this: this, arguments: [interface.jsValue()]).fromJSValue()!
    }

    @inlinable public func createRange() -> Range {
        let this = jsObject
        return this[Strings.createRange].function!(this: this, arguments: []).fromJSValue()!
    }

    // XXX: member 'createNodeIterator' is ignored

    // XXX: member 'createTreeWalker' is ignored

    @inlinable public func measureElement(element: Element) -> FontMetrics {
        let this = jsObject
        return this[Strings.measureElement].function!(this: this, arguments: [element.jsValue()]).fromJSValue()!
    }

    @inlinable public func measureText(text: String, styleMap: StylePropertyMapReadOnly) -> FontMetrics {
        let this = jsObject
        return this[Strings.measureText].function!(this: this, arguments: [text.jsValue(), styleMap.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var fullscreenEnabled: Bool

    @ReadonlyAttribute
    public var fullscreen: Bool

    @inlinable public func exitFullscreen() -> JSPromise {
        let this = jsObject
        return this[Strings.exitFullscreen].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func exitFullscreen() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.exitFullscreen].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }

    @ClosureAttribute1Optional
    public var onfullscreenchange: EventHandler

    @ClosureAttribute1Optional
    public var onfullscreenerror: EventHandler

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

    @inlinable public subscript(key: String) -> JSObject {
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

    @inlinable public func getElementsByName(elementName: String) -> NodeList {
        let this = jsObject
        return this[Strings.getElementsByName].function!(this: this, arguments: [elementName.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var currentScript: HTMLOrSVGScriptElement?

    @inlinable public func open(unused1: String? = nil, unused2: String? = nil) -> Self {
        let this = jsObject
        return this[Strings.open].function!(this: this, arguments: [unused1?.jsValue() ?? .undefined, unused2?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func open(url: String, name: String, features: String) -> WindowProxy? {
        let this = jsObject
        return this[Strings.open].function!(this: this, arguments: [url.jsValue(), name.jsValue(), features.jsValue()]).fromJSValue()!
    }

    @inlinable public func close() {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [])
    }

    @inlinable public func write(text: String...) {
        let this = jsObject
        _ = this[Strings.write].function!(this: this, arguments: text.map { $0.jsValue() })
    }

    @inlinable public func writeln(text: String...) {
        let this = jsObject
        _ = this[Strings.writeln].function!(this: this, arguments: text.map { $0.jsValue() })
    }

    @ReadonlyAttribute
    public var defaultView: WindowProxy?

    @inlinable public func hasFocus() -> Bool {
        let this = jsObject
        return this[Strings.hasFocus].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadWriteAttribute
    public var designMode: String

    @inlinable public func execCommand(commandId: String, showUI: Bool? = nil, value: String? = nil) -> Bool {
        let this = jsObject
        return this[Strings.execCommand].function!(this: this, arguments: [commandId.jsValue(), showUI?.jsValue() ?? .undefined, value?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func queryCommandEnabled(commandId: String) -> Bool {
        let this = jsObject
        return this[Strings.queryCommandEnabled].function!(this: this, arguments: [commandId.jsValue()]).fromJSValue()!
    }

    @inlinable public func queryCommandIndeterm(commandId: String) -> Bool {
        let this = jsObject
        return this[Strings.queryCommandIndeterm].function!(this: this, arguments: [commandId.jsValue()]).fromJSValue()!
    }

    @inlinable public func queryCommandState(commandId: String) -> Bool {
        let this = jsObject
        return this[Strings.queryCommandState].function!(this: this, arguments: [commandId.jsValue()]).fromJSValue()!
    }

    @inlinable public func queryCommandSupported(commandId: String) -> Bool {
        let this = jsObject
        return this[Strings.queryCommandSupported].function!(this: this, arguments: [commandId.jsValue()]).fromJSValue()!
    }

    @inlinable public func queryCommandValue(commandId: String) -> String {
        let this = jsObject
        return this[Strings.queryCommandValue].function!(this: this, arguments: [commandId.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var hidden: Bool

    @ReadonlyAttribute
    public var visibilityState: DocumentVisibilityState

    @ClosureAttribute1Optional
    public var onreadystatechange: EventHandler

    @ClosureAttribute1Optional
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

    @inlinable public func clear() {
        let this = jsObject
        _ = this[Strings.clear].function!(this: this, arguments: [])
    }

    @inlinable public func captureEvents() {
        let this = jsObject
        _ = this[Strings.captureEvents].function!(this: this, arguments: [])
    }

    @inlinable public func releaseEvents() {
        let this = jsObject
        _ = this[Strings.releaseEvents].function!(this: this, arguments: [])
    }

    @ReadonlyAttribute
    public var all: HTMLAllCollection

    @ClosureAttribute1Optional
    public var onfreeze: EventHandler

    @ClosureAttribute1Optional
    public var onresume: EventHandler

    @ReadonlyAttribute
    public var wasDiscarded: Bool

    @ReadonlyAttribute
    public var permissionsPolicy: PermissionsPolicy

    @ReadonlyAttribute
    public var pictureInPictureEnabled: Bool

    @inlinable public func exitPictureInPicture() -> JSPromise {
        let this = jsObject
        return this[Strings.exitPictureInPicture].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func exitPictureInPicture() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.exitPictureInPicture].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }

    @ClosureAttribute1Optional
    public var onpointerlockchange: EventHandler

    @ClosureAttribute1Optional
    public var onpointerlockerror: EventHandler

    @inlinable public func exitPointerLock() {
        let this = jsObject
        _ = this[Strings.exitPointerLock].function!(this: this, arguments: [])
    }

    @ReadonlyAttribute
    public var fragmentDirective: FragmentDirective

    @inlinable public func getSelection() -> Selection? {
        let this = jsObject
        return this[Strings.getSelection].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func hasStorageAccess() -> JSPromise {
        let this = jsObject
        return this[Strings.hasStorageAccess].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func hasStorageAccess() async throws -> Bool {
        let this = jsObject
        let _promise: JSPromise = this[Strings.hasStorageAccess].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @inlinable public func requestStorageAccess() -> JSPromise {
        let this = jsObject
        return this[Strings.requestStorageAccess].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func requestStorageAccess() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.requestStorageAccess].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }

    @ReadonlyAttribute
    public var timeline: DocumentTimeline
}
