import XCTest
import JavaScriptKit
@testable import DOMKit

final class DOMKitTests: XCTestCase {
    func testExample() {
        let document = DOMKit.Document(jsValue: JSObjectRef.global.document)
        let button = document.createElement(localName: "button")
        button.textContent = "Hello, world"
        class ClickListener: EventListener {
            required init(objectRef: JSObjectRef) {
                self.objectRef = objectRef
            }

            var objectRef: JSObjectRef
            static func canDecode(from jsValue: JSValue) -> Bool { false }
            func handleEvent(event: Event) {
                (event.target as? HTMLElement)?.textContent = "Clicked!"
            }
        }
        let emptyObject = JSObjectRef.global.Object.function!(.new)
        button.addEventListener(type: "click", callback: ClickListener(objectRef: emptyObject))
        _ = document.querySelector(selectors: "body")?.appendChild(node: button)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
