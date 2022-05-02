import Foundation

func findExecutablePath(name: String, fileManager: FileManager = .default) -> String {
    let path = ProcessInfo.processInfo.environment["PATH"]
    let pathSeparator: Character
#if os(Windows)
    pathSeparator = ";"
#else
    pathSeparator = ":"
#endif
    let searchPaths = (path ?? "").split(separator: pathSeparator)
    for searchPath in searchPaths {
        let candidate = URL(fileURLWithPath: String(searchPath)).appendingPathComponent(name)
        if fileManager.isExecutableFile(atPath: candidate.path) {
            return candidate.path
        }
    }
    fatalError("Tool '\(name)' not found in PATH")
}
