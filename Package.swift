// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DOMKit",
    products: [
        .executable(
            name: "DOMKitDemo",
            targets: ["DOMKitDemo"]
        ),
        .library(
            name: "DOMKit",
            targets: ["DOMKit"]
        ),
        .library(name: "WebIDL", targets: ["WebIDL"]),
        .executable(name: "WebIDLToSwift", targets: ["WebIDLToSwift"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftwasm/JavaScriptKit.git",
            .revision("95d0c4cd78b48ffc7e19c618d57c3244917be09a")
        ),
    ],
    targets: [
        .target(
            name: "DOMKitDemo",
            dependencies: ["DOMKit"]
        ),
        .target(
            name: "DOMKit",
            dependencies: ["ECMAScript", "JavaScriptKit", .product(name: "JavaScriptEventLoop", package: "JavaScriptKit")]
        ),
        // This support library should be moved to JavaScriptKit
        .target(name: "ECMAScript", dependencies: [
            "JavaScriptKit",
            .product(name: "JavaScriptEventLoop", package: "JavaScriptKit"),
        ]),
        .target(name: "WebIDL"),
        .target(
            name: "WebIDLToSwift",
            dependencies: ["WebIDL"]
        ),
        .testTarget(
            name: "DOMKitTests",
            dependencies: ["DOMKit"]
        ),
    ]
)
