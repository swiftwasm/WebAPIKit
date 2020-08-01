// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DOMKit",
    products: [
        .library(
            name: "DOMKit",
            targets: ["DOMKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kateinoigakukun/JavaScriptKit.git", .revision("c90e82f")),
    ],
    targets: [
        .target(
            name: "DOMKit",
            dependencies: []),
        .testTarget(
            name: "DOMKitTests",
            dependencies: ["DOMKit"]),
    ]
)
