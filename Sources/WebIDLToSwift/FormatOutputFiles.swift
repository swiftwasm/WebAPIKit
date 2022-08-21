import Foundation

enum SwiftFormatter {
    static func run(source: String) {
        print("Formatting generated Swift files...")
        let task = Process()
        task.standardError = FileHandle.standardError
        task.arguments = ["-c", "swiftformat --swiftversion 5.5 \(source)"]
        task.launchPath = "/bin/zsh"
        task.launch()
        task.waitUntilExit()
    }
}
