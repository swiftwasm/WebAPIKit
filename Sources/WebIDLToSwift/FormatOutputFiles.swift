import Foundation

enum SwiftFormatter {
    static func run() {
        print("Formatting generated Swift files...")
        let task = Process()
        task.standardOutput = FileHandle.standardOutput
        task.standardError = FileHandle.standardError
        task.arguments = ["-c", "swiftformat Sources/DOMKit/WebIDL"]
        task.launchPath = "/bin/zsh"
        task.launch()
        task.waitUntilExit()
    }
}
