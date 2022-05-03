@testable import WebIDLToSwift
@testable import WebIDL
import XCTest

final class WebIDLToSwiftTests: XCTestCase {
    func testDeclGraph() throws {
        let idlPaths = IDLParser.defaultIDLs(enabledIDLs: ["url"])
        let idls = try idlPaths.map {
            ($0.name, try IDLParser.parseIDL(path: $0.path))
        }
        let graph = DeclGraph.build(from: idls.map { ($0, $1.array) })
        
    }
}
