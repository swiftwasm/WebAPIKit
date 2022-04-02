// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol ElementContentEditable: JSBridgedClass {}
public extension ElementContentEditable {
    @inlinable var contentEditable: String {
        get { ReadWriteAttribute[Strings.contentEditable, in: jsObject] }
        set { ReadWriteAttribute[Strings.contentEditable, in: jsObject] = newValue }
    }

    @inlinable var enterKeyHint: String {
        get { ReadWriteAttribute[Strings.enterKeyHint, in: jsObject] }
        set { ReadWriteAttribute[Strings.enterKeyHint, in: jsObject] = newValue }
    }

    @inlinable var isContentEditable: Bool { ReadonlyAttribute[Strings.isContentEditable, in: jsObject] }

    @inlinable var inputMode: String {
        get { ReadWriteAttribute[Strings.inputMode, in: jsObject] }
        set { ReadWriteAttribute[Strings.inputMode, in: jsObject] = newValue }
    }

    @inlinable var virtualKeyboardPolicy: String {
        get { ReadWriteAttribute[Strings.virtualKeyboardPolicy, in: jsObject] }
        set { ReadWriteAttribute[Strings.virtualKeyboardPolicy, in: jsObject] = newValue }
    }
}
