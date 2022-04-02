// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PerformanceResourceTiming: PerformanceEntry {
    override public class var constructor: JSFunction { JSObject.global[Strings.PerformanceResourceTiming].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _serverTiming = ReadonlyAttribute(jsObject: jsObject, name: Strings.serverTiming)
        _initiatorType = ReadonlyAttribute(jsObject: jsObject, name: Strings.initiatorType)
        _nextHopProtocol = ReadonlyAttribute(jsObject: jsObject, name: Strings.nextHopProtocol)
        _workerStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.workerStart)
        _redirectStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.redirectStart)
        _redirectEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.redirectEnd)
        _fetchStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.fetchStart)
        _domainLookupStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.domainLookupStart)
        _domainLookupEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.domainLookupEnd)
        _connectStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.connectStart)
        _connectEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.connectEnd)
        _secureConnectionStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.secureConnectionStart)
        _requestStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.requestStart)
        _responseStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.responseStart)
        _responseEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.responseEnd)
        _transferSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.transferSize)
        _encodedBodySize = ReadonlyAttribute(jsObject: jsObject, name: Strings.encodedBodySize)
        _decodedBodySize = ReadonlyAttribute(jsObject: jsObject, name: Strings.decodedBodySize)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var serverTiming: [PerformanceServerTiming]

    @ReadonlyAttribute
    public var initiatorType: String

    @ReadonlyAttribute
    public var nextHopProtocol: String

    @ReadonlyAttribute
    public var workerStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var redirectStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var redirectEnd: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var fetchStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var domainLookupStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var domainLookupEnd: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var connectStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var connectEnd: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var secureConnectionStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var requestStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var responseStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var responseEnd: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var transferSize: UInt64

    @ReadonlyAttribute
    public var encodedBodySize: UInt64

    @ReadonlyAttribute
    public var decodedBodySize: UInt64

    override public func toJSON() -> JSObject {
        jsObject[Strings.toJSON]!().fromJSValue()!
    }
}
