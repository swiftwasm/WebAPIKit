// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Performance: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.Performance].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _eventCounts = ReadonlyAttribute(jsObject: jsObject, name: Strings.eventCounts)
        _interactionCounts = ReadonlyAttribute(jsObject: jsObject, name: Strings.interactionCounts)
        _timeOrigin = ReadonlyAttribute(jsObject: jsObject, name: Strings.timeOrigin)
        _timing = ReadonlyAttribute(jsObject: jsObject, name: Strings.timing)
        _navigation = ReadonlyAttribute(jsObject: jsObject, name: Strings.navigation)
        _onresourcetimingbufferfull = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onresourcetimingbufferfull)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var eventCounts: EventCounts

    @ReadonlyAttribute
    public var interactionCounts: InteractionCounts

    @inlinable public func now() -> DOMHighResTimeStamp {
        let this = jsObject
        return this[Strings.now].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadonlyAttribute
    public var timeOrigin: DOMHighResTimeStamp

    @inlinable public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadonlyAttribute
    public var timing: PerformanceTiming

    @ReadonlyAttribute
    public var navigation: PerformanceNavigation

    @inlinable public func measureUserAgentSpecificMemory() -> JSPromise {
        let this = jsObject
        return this[Strings.measureUserAgentSpecificMemory].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func measureUserAgentSpecificMemory() async throws -> MemoryMeasurement {
        let this = jsObject
        let _promise: JSPromise = this[Strings.measureUserAgentSpecificMemory].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @inlinable public func getEntries() -> PerformanceEntryList {
        let this = jsObject
        return this[Strings.getEntries].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getEntriesByType(type: String) -> PerformanceEntryList {
        let this = jsObject
        return this[Strings.getEntriesByType].function!(this: this, arguments: [type.jsValue()]).fromJSValue()!
    }

    @inlinable public func getEntriesByName(name: String, type: String? = nil) -> PerformanceEntryList {
        let this = jsObject
        return this[Strings.getEntriesByName].function!(this: this, arguments: [name.jsValue(), type?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func clearResourceTimings() {
        let this = jsObject
        _ = this[Strings.clearResourceTimings].function!(this: this, arguments: [])
    }

    @inlinable public func setResourceTimingBufferSize(maxSize: UInt32) {
        let this = jsObject
        _ = this[Strings.setResourceTimingBufferSize].function!(this: this, arguments: [maxSize.jsValue()])
    }

    @ClosureAttribute1Optional
    public var onresourcetimingbufferfull: EventHandler

    @inlinable public func mark(markName: String, markOptions: PerformanceMarkOptions? = nil) -> PerformanceMark {
        let this = jsObject
        return this[Strings.mark].function!(this: this, arguments: [markName.jsValue(), markOptions?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func clearMarks(markName: String? = nil) {
        let this = jsObject
        _ = this[Strings.clearMarks].function!(this: this, arguments: [markName?.jsValue() ?? .undefined])
    }

    @inlinable public func measure(measureName: String, startOrMeasureOptions: PerformanceMeasureOptions_or_String? = nil, endMark: String? = nil) -> PerformanceMeasure {
        let this = jsObject
        return this[Strings.measure].function!(this: this, arguments: [measureName.jsValue(), startOrMeasureOptions?.jsValue() ?? .undefined, endMark?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func clearMeasures(measureName: String? = nil) {
        let this = jsObject
        _ = this[Strings.clearMeasures].function!(this: this, arguments: [measureName?.jsValue() ?? .undefined])
    }
}
