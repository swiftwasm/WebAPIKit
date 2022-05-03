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

    static let defaultEnabledIDLs = [
        "fetch", "geometry", "hr-time", "referrer-policy", "uievents", "wai-aria",
        "web-animations", "xhr", "service-workers", "streams", "dom", "html",
        "webidl", "url", "console", "FileAPI"
    ]
    static func defaultIDLs(enabledIDLs: [String] = defaultEnabledIDLs) -> [(name: String, path: URL)] {
        return enabledIDLs.map { idl in
            let path = packageDir
                .appendingPathComponent("node_modules")
                .appendingPathComponent("@webref")
                .appendingPathComponent("idl")
                .appendingPathComponent(idl + ".idl")
            return (idl, path)
        }
    }
}
