// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Performance: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.Performance].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _eventCounts = ReadonlyAttribute(jsObject: jsObject, name: Strings.eventCounts)
        _interactionCounts = ReadonlyAttribute(jsObject: jsObject, name: Strings.interactionCounts)
        _onresourcetimingbufferfull = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onresourcetimingbufferfull)
        _timeOrigin = ReadonlyAttribute(jsObject: jsObject, name: Strings.timeOrigin)
        _timing = ReadonlyAttribute(jsObject: jsObject, name: Strings.timing)
        _navigation = ReadonlyAttribute(jsObject: jsObject, name: Strings.navigation)
        super.init(unsafelyWrapping: jsObject)
    }

    public func mark(markName: String, markOptions: PerformanceMarkOptions? = nil) -> PerformanceMark {
        jsObject[Strings.mark]!(markName.jsValue(), markOptions?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func clearMarks(markName: String? = nil) {
        _ = jsObject[Strings.clearMarks]!(markName?.jsValue() ?? .undefined)
    }

    public func measure(measureName: String, startOrMeasureOptions: __UNSUPPORTED_UNION__? = nil, endMark: String? = nil) -> PerformanceMeasure {
        jsObject[Strings.measure]!(measureName.jsValue(), startOrMeasureOptions?.jsValue() ?? .undefined, endMark?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func clearMeasures(measureName: String? = nil) {
        _ = jsObject[Strings.clearMeasures]!(measureName?.jsValue() ?? .undefined)
    }

    @ReadonlyAttribute
    public var eventCounts: EventCounts

    @ReadonlyAttribute
    public var interactionCounts: InteractionCounts

    public func getEntries() -> PerformanceEntryList {
        jsObject[Strings.getEntries]!().fromJSValue()!
    }

    public func getEntriesByType(type: String) -> PerformanceEntryList {
        jsObject[Strings.getEntriesByType]!(type.jsValue()).fromJSValue()!
    }

    public func getEntriesByName(name: String, type: String? = nil) -> PerformanceEntryList {
        jsObject[Strings.getEntriesByName]!(name.jsValue(), type?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func clearResourceTimings() {
        _ = jsObject[Strings.clearResourceTimings]!()
    }

    public func setResourceTimingBufferSize(maxSize: UInt32) {
        _ = jsObject[Strings.setResourceTimingBufferSize]!(maxSize.jsValue())
    }

    @ClosureAttribute.Optional1
    public var onresourcetimingbufferfull: EventHandler

    public func measureUserAgentSpecificMemory() -> JSPromise {
        jsObject[Strings.measureUserAgentSpecificMemory]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func measureUserAgentSpecificMemory() async throws -> MemoryMeasurement {
        let _promise: JSPromise = jsObject[Strings.measureUserAgentSpecificMemory]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func now() -> DOMHighResTimeStamp {
        jsObject[Strings.now]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var timeOrigin: DOMHighResTimeStamp

    public func toJSON() -> JSObject {
        jsObject[Strings.toJSON]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var timing: PerformanceTiming

    @ReadonlyAttribute
    public var navigation: PerformanceNavigation
}
