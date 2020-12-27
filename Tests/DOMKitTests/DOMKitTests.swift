import XCTest
import DOMKit

final class DOMKitTests: XCTestCase {
    func testExample() {
        let document = globalThis.document
        let button = document.createElement(localName: "button")
        button.textContent = "Hello, world!"
        _ = document.querySelector(selectors: "body")?.appendChild(node: button)

        let queriedButton = document.querySelector(selectors: "body button")
        XCTAssertEqual(queriedButton?.textContent, "Hello, world!")
    }
}
