// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let readable: JSString = "readable"
    static let writable: JSString = "writable"
}

public protocol GenericTransformStream: JSBridgedClass {}
public extension GenericTransformStream {
    var readable: ReadableStream { ReadonlyAttribute[Keys.readable, in: jsObject] }

    var writable: WritableStream { ReadonlyAttribute[Keys.writable, in: jsObject] }
}
