import Foundation
import WebIDL

enum IDLBuilder {
    static let preamble = """
    // This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

    import JavaScriptKit
    import JavaScriptEventLoop
    \n
    """

    static let outDir = "Sources/DOMKit/WebIDL/"
    static func writeFile(named name: String, content: String) throws {
        let path = outDir + name + ".swift"
        if FileManager.default.fileExists(atPath: path) {
            fatalError("file already exists for \(name)")
        } else {
            try (preamble + content).write(toFile: path, atomically: true, encoding: .utf8)
        }
    }

    static func cleanOutputFolder() throws {
        for file in try FileManager.default.contentsOfDirectory(atPath: outDir) {
            try FileManager.default.removeItem(atPath: outDir + file)
        }
    }

    static func generateIDLBindings(idl: [GenericCollection<IDLNode>]) throws {
        let declarations = idl.flatMap(\.array)
        let merged = DeclarationMerger.merge(declarations: declarations)
        for (i, node) in merged.declarations.enumerated() {
            guard let nameNode = Mirror(reflecting: node).children.first(where: { $0.label == "name" }),
                  let name = nameNode.value as? String
            else {
                fatalError("Cannot find name for \(node)")
            }
            let content = Context.withState(.root(
                interfaces: merged.interfaces,
                ignored: [
                    // functions as parameters are unsupported
                    "AnimationFrameProvider": ["requestAnimationFrame"],
                    "AnimationWorkletGlobalScope": ["registerAnimator"],
                    "AudioWorkletGlobalScope": ["registerProcessor"],
                    "BaseAudioContext": ["decodeAudioData"],
                    "ComputePressureObserver": ["<constructor>"],
                    "DataTransferItem": ["getAsString"],
                    "FileSystemDirectoryEntry": ["getFile", "getDirectory"],
                    "FileSystemDirectoryReader": ["readEntries"],
                    "FileSystemEntry": ["getParent"],
                    "FileSystemFileEntry": ["file"],
                    "Geolocation": ["getCurrentPosition", "watchPosition"],
                    "HTMLCanvasElement": ["toBlob"],
                    "HTMLVideoElement": ["requestVideoFrameCallback"],
                    "IntersectionObserver": ["<constructor>"],
                    "LayoutWorkletGlobalScope": ["registerLayout"],
                    "LockManager": ["request"],
                    "MediaSession": ["setActionHandler"],
                    "MutationObserver": ["<constructor>"],
                    "Navigator": ["getUserMedia"],
                    "Notification": ["requestPermission"],
                    "PaintWorkletGlobalScope": ["registerPaint"],
                    "PerformanceObserver": ["<constructor>"],
                    "RemotePlayback": ["watchAvailability"],
                    "ReportingObserver": ["<constructor>"],
                    "ResizeObserver": ["<constructor>"],
                    "RTCPeerConnection": ["createOffer", "setLocalDescription", "createAnswer", "setRemoteDescription", "addIceCandidate"],
                    "Scheduler": ["postTask"],
                    "Window": ["requestIdleCallback"],
                    "WindowOrWorkerGlobalScope": ["queueMicrotask"],
                    "XRSession": ["requestAnimationFrame"],
                    // functions as return types are unsupported
                    "CustomElementRegistry": ["define", "whenDefined"],
                    // NodeFilter
                    "Document": ["createNodeIterator", "createTreeWalker"],
                    "NodeIterator": ["filter"],
                    "TreeWalker": ["filter"],
                    // EventListener
                    "EventTarget": ["addEventListener", "removeEventListener"],
                    "MediaQueryList": ["addListener", "removeListener"],
                    // invalid override in Swift
                    "BeforeUnloadEvent": ["returnValue"],
                    "CSSColor": ["colorSpace"],
                    "SVGElement": ["className"],
                    // XPathNSResolver
                    "XPathEvaluatorBase": ["createExpression", "createNSResolver", "evaluate"],
                ],
                types: merged.types
            )) {
                toSwift(node).source
            }
            try writeFile(named: name, content: content)
        }
    }

    static func generateClosureTypes() throws {
        let closureTypesContent: SwiftSource = """
        /* variadic generics please */
        \(lines: Context.closurePatterns.sorted().map(\.swiftRepresentation))
        """

        try writeFile(named: "ClosureAttribute", content: closureTypesContent.source)
    }

    static func generateStrings() throws {
        let strings = Context.strings.sorted()
        let stringsContent: SwiftSource = """
            @usableFromInline enum Strings {
                static let _self: JSString = "self"
                \(lines: strings.map { "@usableFromInline static let `\(raw: $0)`: JSString = \(quoted: $0)" })
            }
        """

        try writeFile(named: "Strings", content: stringsContent.source)
    }
}
