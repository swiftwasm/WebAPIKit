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

    static func parseIDL() throws -> [GenericCollection<IDLNode>] {
        let enabledIDLs = [
            "dom",
            "fetch",
            "FileAPI",
            "html",
            "geometry",
            "hr-time",
            "referrer-policy",
            "uievents",
            "wai-aria",
            "webidl",
            "web-animations",
            "xhr",
            "service-workers",
            "url",
            "streams",
            "console",
        ]
        print("Building IDL struct tree...")
        return try enabledIDLs.map { idl in
            let idlPath = packageDir
                .appendingPathComponent("node_modules")
                .appendingPathComponent("@webref")
                .appendingPathComponent("idl")
                .appendingPathComponent(idl + ".idl")
            return try parseIDL(path: idlPath)
        }
    }
}
