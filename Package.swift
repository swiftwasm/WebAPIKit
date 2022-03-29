// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

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
    ],
    dependencies: [
        .package(
            name: "JavaScriptKit",
            url: "https://github.com/swiftwasm/JavaScriptKit.git",
            .upToNextMinor(from: "0.9.0")),
    ],
    targets: [
        .target(
            name: "DOMKitDemo",
            dependencies: ["DOMKit"]
        ),
        .target(
            name: "DOMKit",
            dependencies: ["JavaScriptKit"]),
        .target(name: "WebIDL"),
        .testTarget(
            name: "DOMKitTests",
            dependencies: ["DOMKit"]),
    ]
)
