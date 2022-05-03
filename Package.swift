// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dependencyOfWebIDLToSwift: [Target.Dependency] = ["ECMAScript", "JavaScriptKit", .product(name: "JavaScriptEventLoop", package: "JavaScriptKit")]

let package = Package(
    name: "DOMKit",
    products: [
        .executable(
            name: "DOMKitDemo",
            targets: ["DOMKitDemo"]),
        .library(
            name: "DOMKit",
            targets: ["DOMKit"]),
        .library(name: "WebIDL", targets: ["WebIDL"]),
        .executable(name: "idl2swift", targets: ["idl2swift"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftwasm/JavaScriptKit.git",
            .branch("main")),
    ],
    targets: [
        .target(
            name: "DOMKitDemo",
            dependencies: ["DOMKit"]),
        .target(
            name: "DOMKit",
            dependencies: dependencyOfWebIDLToSwift),
        // This support library should be moved to JavaScriptKit
        .target(name: "ECMAScript", dependencies: [
            "JavaScriptKit",
            .product(name: "JavaScriptEventLoop", package: "JavaScriptKit")]),
        .target(name: "WebIDL"),
        .target(
            name: "WebIDLToSwift",
            dependencies: ["WebIDL"]),
        .target(
            name: "idl2swift",
            dependencies: ["WebIDLToSwift"]),
        .testTarget(
            name: "DOMKitTests",
            dependencies: ["DOMKit"]),
        .testTarget(
            name: "WebIDLToSwiftTests", dependencies: ["WebIDLToSwift"]),
    ]
)
