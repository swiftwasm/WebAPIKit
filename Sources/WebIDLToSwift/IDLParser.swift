import Foundation
import WebIDL

enum IDLParser {
    private static func getJSONData() -> Data {
        print("Fetching parsed IDL files...")
        let task = Process()
        let pipe = Pipe()
        task.standardOutput = pipe
        task.standardError = FileHandle.standardError
        task.arguments = ["-c", "npm start --silent"]
        task.launchPath = "/bin/zsh"
        task.currentDirectoryPath = FileManager.default.currentDirectoryPath + "/parse-idl"
        task.launch()

        return pipe.fileHandleForReading.readDataToEndOfFile()
    }

    static func parseIDL() throws -> [String: GenericCollection<IDLNode>] {
        let data = getJSONData()
        print("Building IDL struct tree...")
        return try JSONDecoder().decode([String: GenericCollection<IDLNode>].self, from: data)
    }
}
