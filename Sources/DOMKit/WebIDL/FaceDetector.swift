// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FaceDetector: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.FaceDetector].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(faceDetectorOptions: FaceDetectorOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [faceDetectorOptions?.jsValue() ?? .undefined]))
    }

    public func detect(image: ImageBitmapSource) -> JSPromise {
        let this = jsObject
        return this[Strings.detect].function!(this: this, arguments: [image.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func detect(image: ImageBitmapSource) async throws -> [DetectedFace] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.detect].function!(this: this, arguments: [image.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
