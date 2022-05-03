import Foundation
import WebIDL

enum IDLParser {
    private static let packageDir = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        .appendingPathComponent("parse-idl")
    private static func getJSONData(idlPath: URL) -> Data {
        print("Fetching parsed IDL file of \(idlPath.path)...")
        let task = Process()
        let pipe = Pipe()
        task.standardOutput = pipe
        task.standardError = FileHandle.standardError
        task.launchPath = findExecutablePath(name: "node")
        task.arguments = [packageDir.appendingPathComponent("index.js").path, idlPath.path]
        task.currentDirectoryPath = packageDir.path
        task.launch()

        return pipe.fileHandleForReading.readDataToEndOfFile()
    }

    static func parseIDL(path: URL) throws -> GenericCollection<IDLNode> {
        let data = getJSONData(idlPath: path)
        return try JSONDecoder().decode(GenericCollection<IDLNode>.self, from: data)
    }

    static func defaultIDLs() -> [(name: String, path: URL)] {
        let enabledIDLs: [(moduleName: String, idlNames: [String], imports: [String])] = [
//            ("DOMKit", [
//                "fetch",
//                "geometry",
//                "hr-time",
//                "referrer-policy",
//                "uievents",
//                "wai-aria",
//                "web-animations",
//                "xhr",
//                "service-workers",
//                "streams",
//                "dom",
//                "html",
//            ], ["DOMKitConsole", "DOMKitFileAPI", "DOMKitWebIDL", "DOMKitURL"]),
            ("DOMKitWebIDL", ["webidl"], []),
            ("DOMKitURL", ["url"], []),
            ("DOMKitConsole", ["console"], []),
            ("DOMKitFileAPI", ["FileAPI"], ["DOMKitWebIDL"]),
        ]
        return enabledIDLs.flatMap { idl in
            idl.idlNames.map {
                let path = packageDir
                    .appendingPathComponent("node_modules")
                    .appendingPathComponent("@webref")
                    .appendingPathComponent("idl")
                    .appendingPathComponent($0 + ".idl")
                return ($0, path)
            }
        }
    }
}
