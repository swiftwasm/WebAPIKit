// swiftlint:disable function_body_length
func generateManifest(_ modules: [Module]) -> String {
    #"""
    // swift-tools-version: 6.1
    // The swift-tools-version declares the minimum version of Swift required to build this package.

    import PackageDescription

    let package = Package(
        name: "WebAPIKit",
        platforms: [.macOS(.v10_15)],
        products: [
            .executable(
                name: "WebAPIKitDemo",
                targets: ["WebAPIKitDemo"]
            ),
    \#(
        modules.map {
            #"""
                    .library(
                        name: "\#($0.swiftModule)",
                        targets: ["\#($0.swiftModule)"]
                    ),
            """#
        }.joined(separator: "\n")
    )
            .executable(name: "WebIDLToSwift", targets: ["WebIDLToSwift"]),
        ],
        dependencies: [
            .package(
                url: "https://github.com/swiftwasm/JavaScriptKit.git",
                .upToNextMajor(from: "0.29.0")
            ),
        ],
        targets: [
            .executableTarget(
                name: "WebAPIKitDemo",
                dependencies: ["DOM", "WebGL2"]
            ),
    \#(
        modules.map {
            #"""
                    .target(
                        name: "\#($0.swiftModule)",
                        dependencies: \#($0.dependencies + ["ECMAScript"])
                    ),
            """#
        }.joined(separator: "\n")
    )
            // This support library should be moved to JavaScriptKit
            .target(name: "ECMAScript", dependencies: [
                "JavaScriptKit",
                .product(name: "JavaScriptEventLoop", package: "JavaScriptKit"),
                .product(name: "JavaScriptBigIntSupport", package: "JavaScriptKit"),
            ]),
            .target(name: "WebIDL"),
            .executableTarget(
                name: "WebIDLToSwift",
                dependencies: ["WebIDL"]
            ),
            .testTarget(
                name: "WebAPIKitTests",
                dependencies: ["DOM"]
            ),
        ],
        swiftLanguageModes: [.v5]
    )
    """#
}
