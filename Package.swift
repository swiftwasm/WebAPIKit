// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebAPIKit",
    platforms: [.macOS(.v10_13)],
    products: [
        .executable(
            name: "WebAPIKitDemo",
            targets: ["WebAPIKitDemo"]
        ),
        .library(
            name: "WebAPIBase",
            targets: ["WebAPIBase"]
        ),
        .library(
            name: "DOM",
            targets: ["DOM"]
        ),
        .library(
            name: "WebSockets",
            targets: ["WebSockets"]
        ),
        .library(
            name: "WebAudio",
            targets: ["WebAudio"]
        ),
        .library(
            name: "WebAnimations",
            targets: ["WebAnimations"]
        ),
        .library(
            name: "WebGL1",
            targets: ["WebGL1"]
        ),
        .library(
            name: "WebGL2",
            targets: ["WebGL2"]
        ),
        .library(
            name: "WebGPU",
            targets: ["WebGPU"]
        ),
        .executable(name: "WebIDLToSwift", targets: ["WebIDLToSwift"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftwasm/JavaScriptKit.git",
            from: "0.16.0"
        ),
    ],
    targets: [
        .executableTarget(
            name: "WebAPIKitDemo",
            dependencies: ["DOM", "WebGL2"]
        ),
        .target(
            name: "WebAPIBase",
            dependencies: ["ECMAScript"]
        ),
        .target(
            name: "DOM",
            dependencies: ["WebAPIBase", "ECMAScript"]
        ),
        .target(
            name: "WebSockets",
            dependencies: ["DOM", "WebAPIBase", "ECMAScript"]
        ),
        .target(
            name: "WebAudio",
            dependencies: ["DOM", "WebAPIBase", "ECMAScript"]
        ),
        .target(
            name: "WebAnimations",
            dependencies: ["DOM", "WebAPIBase", "WebAudio", "ECMAScript"]
        ),
        .target(
            name: "WebGL1",
            dependencies: ["DOM", "WebAPIBase", "WebAudio", "WebAnimations", "ECMAScript"]
        ),
        .target(
            name: "WebGL2",
            dependencies: ["DOM", "WebAPIBase", "WebAudio", "WebAnimations", "WebGL1", "ECMAScript"]
        ),
        .target(
            name: "WebGPU",
            dependencies: ["DOM", "WebAPIBase", "WebAudio", "WebAnimations", "WebGL1", "ECMAScript"]
        ),
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
    ]
)