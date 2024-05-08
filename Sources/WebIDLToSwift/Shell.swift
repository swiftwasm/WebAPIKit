import Foundation

enum Shell {
    static func format(source: String) {
        print("Formatting generated Swift files...")
        run(script: "swiftformat --swiftversion 5.5 \(source)")
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
            run(script: "git apply \(patchFile)")
        }
    }

    private static func run(script: String) {
        // print("*** running script: \(script)")
        let task = Process()
        task.standardError = FileHandle.standardError
        task.arguments = ["--login", "-c", script]
        task.launchPath = "/bin/zsh"
        task.currentDirectoryURL = projectRoot
        task.launch()
        task.waitUntilExit()
        if task.terminationStatus != 0 {
            print("Error: \(script) failed with exit code \(task.terminationStatus)")
            exit(task.terminationStatus)
        }
    }
}
