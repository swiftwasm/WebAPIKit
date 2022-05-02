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

    static func defaultIDLs() -> [(path: URL, shouldBeMerged: Bool)] {
        let enabledIDLs: [(name: String, shouldBeMerged: Bool)] = [
            ("dom", true),
            ("fetch", true),
            ("FileAPI", true),
            ("html", true),
            ("geometry", true),
            ("hr-time", true),
            ("referrer-policy", true),
            ("uievents", true),
            ("wai-aria", true),
            ("webidl", true),
            ("web-animations", true),
            ("xhr", true),
            ("service-workers", true),
            ("url", true),
            ("streams", true),
            ("console", true),
        ]
        return enabledIDLs.map { idl in
            let path = packageDir
                .appendingPathComponent("node_modules")
                .appendingPathComponent("@webref")
                .appendingPathComponent("idl")
                .appendingPathComponent(idl.name + ".idl")
            return (path, idl.shouldBeMerged)
        }
    }
}
