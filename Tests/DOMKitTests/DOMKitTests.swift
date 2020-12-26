import XCTest
import JavaScriptKit
@testable import DOMKit

final class DOMKitTests: XCTestCase {
    func testExample() {
        let document = DOMKit.Document(from: JSObject.global.document)!
        let button = document.createElement(localName: "button")
        button.textContent = "Hello, world"
        button.addEventListener(type: "click") { event in
            (event.target as? HTMLElement)?.textContent = "Clicked!"
        }
        _ = document.querySelector(selectors: "body")?.appendChild(node: button)
    }
}
