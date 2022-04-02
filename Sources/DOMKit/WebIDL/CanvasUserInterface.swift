// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let drawFocusIfNeeded: JSString = "drawFocusIfNeeded"
    static let scrollPathIntoView: JSString = "scrollPathIntoView"
}

public protocol CanvasUserInterface: JSBridgedClass {}
public extension CanvasUserInterface {
    func drawFocusIfNeeded(element: Element) {
        _ = jsObject[Keys.drawFocusIfNeeded]!(element.jsValue())
    }

    func drawFocusIfNeeded(path: Path2D, element: Element) {
        _ = jsObject[Keys.drawFocusIfNeeded]!(path.jsValue(), element.jsValue())
    }

    func scrollPathIntoView() {
        _ = jsObject[Keys.scrollPathIntoView]!()
    }

    func scrollPathIntoView(path: Path2D) {
        _ = jsObject[Keys.scrollPathIntoView]!(path.jsValue())
    }
}
