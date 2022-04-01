// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let globalAlpha: JSString = "globalAlpha"
    static let globalCompositeOperation: JSString = "globalCompositeOperation"
}

public protocol CanvasCompositing: JSBridgedClass {}
public extension CanvasCompositing {
    var globalAlpha: Double {
        get { ReadWriteAttribute[Keys.globalAlpha, in: jsObject] }
        set { ReadWriteAttribute[Keys.globalAlpha, in: jsObject] = newValue }
    }

    var globalCompositeOperation: String {
        get { ReadWriteAttribute[Keys.globalCompositeOperation, in: jsObject] }
        set { ReadWriteAttribute[Keys.globalCompositeOperation, in: jsObject] = newValue }
    }
}
