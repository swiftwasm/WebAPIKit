import Foundation
import WebIDL

enum IDLParser {
    private static func getJSONData(_ modules: [String]) -> Data {
        print("Fetching parsed IDL files...")
        let task = Process()
        let pipe = Pipe()
        task.standardOutput = pipe
        task.standardError = FileHandle.standardError
        task.arguments = ["start", "--silent"] + modules
        task.launchPath = findExecutable("npm")
        task.currentDirectoryURL = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .appendingPathComponent("../../parse-idl")
        task.launch()
        return pipe.fileHandleForReading.readDataToEndOfFile()
    }

    static func parseIDL(modules: [String]) throws -> [GenericCollection<IDLNode>] {
        let data = getJSONData(modules)
        print("Building IDL struct tree from data of size \(data.count) bytes")

        return try JSONDecoder().decode([GenericCollection<IDLNode>].self, from: data)
    }
}
