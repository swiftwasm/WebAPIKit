import Foundation

enum Shell {
    static func format(source: String) {
        print("Formatting generated Swift files...")
        run(executable: "swift", arguments: ["format", "format", "--parallel", "--in-place", source])
    }

    private static let projectRoot = URL(fileURLWithPath: #file)
        .deletingLastPathComponent()
        .deletingLastPathComponent()
        .deletingLastPathComponent()

    private static let patchFolder = projectRoot
        .appendingPathComponent("Patches")

    static func patch(module: Module) {
        let patchFile = patchFolder.appendingPathComponent(module.swiftModule).appendingPathExtension("patch").path
        if FileManager.default.fileExists(atPath: patchFile) {
            print("Patching generated Swift files...")
            run(executable: "git", arguments: ["apply", patchFile])
        }
    }

    private static func run(executable: String, arguments: [String]) {
        // print("*** running script: \(script)")
        let task = Process()
        task.standardError = FileHandle.standardError
        task.arguments = arguments
        task.launchPath = findExecutable(executable)
        task.currentDirectoryURL = projectRoot
        task.launch()
        task.waitUntilExit()
        if task.terminationStatus != 0 {
            print("Error: \(([executable] + arguments).map { "\"\($0)\"" }.joined(separator: " ")) failed with exit code \(task.terminationStatus)")
            exit(task.terminationStatus)
        }
    }
}

func findExecutable(_ name: String) -> String? {
    guard let path = ProcessInfo.processInfo.environment["PATH"] else {
        return nil
    }
    let paths = path.split(separator: ":")
    for p in paths {
        let fullPath = URL(fileURLWithPath: String(p)).appendingPathComponent(name).path
        if FileManager.default.isExecutableFile(atPath: fullPath) {
            return fullPath
        }
    }
    return nil
}
