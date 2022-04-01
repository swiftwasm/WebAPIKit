// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class External: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.External.function! }

    private enum Keys {
        static let IsSearchProviderInstalled: JSString = "IsSearchProviderInstalled"
        static let AddSearchProvider: JSString = "AddSearchProvider"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func AddSearchProvider() {
        _ = jsObject[Keys.AddSearchProvider]!()
    }

    public func IsSearchProviderInstalled() {
        _ = jsObject[Keys.IsSearchProviderInstalled]!()
    }
}
