// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let assignedSlot: JSString = "assignedSlot"
}

public protocol Slottable: JSBridgedClass {}
public extension Slottable {
    var assignedSlot: HTMLSlotElement? { ReadonlyAttribute[Keys.assignedSlot, in: jsObject] }
}
