import JavaScriptKit

public class EventTarget: JSBridgedClass {
    public class var constructor: JSFunction {
        JSObject.global["EventTarget"].function!
    }
    
    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

}
public typealias Blob_or_MediaSource = JSValue
public typealias EventHandler = JSValue
