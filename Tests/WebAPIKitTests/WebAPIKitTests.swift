import DOM
import Foundation
import JavaScriptKit
import XCTest

final class WebAPIKitTests: XCTestCase {
    func testQuerySelector() {
        let document = globalThis.document
        let button = document.createElement(localName: "button")
        button.textContent = "Hello, world!"
        _ = document.querySelector(selectors: "body")?.appendChild(node: button)

        let queriedButton = document.querySelector(selectors: "body button")
        XCTAssertEqual(queriedButton?.textContent, "Hello, world!")
    }

    func testDataToTypedArray() {
        let array: [UInt8] = [1, 2, 3, 4, 5]
        let data = Data(array)
        let typedArray = JSTypedArray(data)

        typedArray.withUnsafeBytes {
            XCTAssertEqual($0.count, data.count)
            for index in $0.indices {
                XCTAssertEqual(array[index], $0[index])
            }
        }
    }

    func testTypedArrayToData() {
        let array: [UInt8] = [1, 2, 3, 4, 5]
        let typedArray = JSTypedArray(array)

        let data = Data(typedArray.arrayBuffer)

        typedArray.withUnsafeBytes {
            XCTAssertEqual($0.count, data.count)
            for index in $0.indices {
                XCTAssertEqual(array[index], $0[index])
            }
        }
    }
}
