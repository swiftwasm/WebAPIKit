import XCTest
import JavaScriptKit
@testable import DOMKit

final class DOMKitTests: XCTestCase {
    func testExample() {
        let document = globalThis.document
        let button = document.createElement(localName: "button")
        button.textContent = "Hello, world"
        button.addEventListener(type: "click", callback: { event in
            (event.target as? HTMLElement)?.textContent = "Clicked!"
        })
        _ = document.querySelector(selectors: "body")?.appendChild(node: button)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
