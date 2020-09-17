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
        .package(name: "JavaScriptKit", url: "https://github.com/j-f1/forked-JavaScriptKit.git", .revision("4429d88")),
    ],
    targets: [
        .target(
            name: "DOMKit",
            dependencies: ["JavaScriptKit"]),
        .testTarget(
            name: "DOMKitTests",
            dependencies: ["DOMKit"]),
    ]
)
