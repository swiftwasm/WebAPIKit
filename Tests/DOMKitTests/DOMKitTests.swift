import XCTest
import DOMKit

final class DOMKitTests: XCTestCase {
    func testExample() {
        let document = global.document
        let button = document.createElement(localName: "button")
        button.textContent = "Hello, world!"
        button.addEventListener(type: "click") { event in
            (event.target as? HTMLElement)?.textContent = "Clicked!"
        }
        _ = document.querySelector(selectors: "body")?.appendChild(node: button)

        let queriedButton = document.querySelector(selectors: "body button")
        XCTAssertEqual(button.textContent, "Hello, world!")
    }
}
