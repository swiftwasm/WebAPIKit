// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ProfilerTrace: BridgedDictionary {
    public convenience init(resources: [ProfilerResource], frames: [ProfilerFrame], stacks: [ProfilerStack], samples: [ProfilerSample]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.resources] = resources.jsValue()
        object[Strings.frames] = frames.jsValue()
        object[Strings.stacks] = stacks.jsValue()
        object[Strings.samples] = samples.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _resources = ReadWriteAttribute(jsObject: object, name: Strings.resources)
        _frames = ReadWriteAttribute(jsObject: object, name: Strings.frames)
        _stacks = ReadWriteAttribute(jsObject: object, name: Strings.stacks)
        _samples = ReadWriteAttribute(jsObject: object, name: Strings.samples)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var resources: [ProfilerResource]

    @ReadWriteAttribute
    public var frames: [ProfilerFrame]

    @ReadWriteAttribute
    public var stacks: [ProfilerStack]

    @ReadWriteAttribute
    public var samples: [ProfilerSample]
}