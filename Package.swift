// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebAPIKit",
    products: [
        .executable(
            name: "WebAPIKitDemo",
            targets: ["WebAPIKitDemo"]
        ),
        .library(
            name: "WebAPIKit",
            targets: ["WebAPIKit"]
        ),
        .library(name: "WebIDL", targets: ["WebIDL"]),
        .executable(name: "WebIDLToSwift", targets: ["WebIDLToSwift"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftwasm/JavaScriptKit.git",
            .branch("maxd/optional-constructor")
        ),
    ],
    targets: [
        .target(
            name: "WebAPIKitDemo",
            dependencies: ["WebAPIKit"]
        ),
        .target(
            name: "WebAPIKit",
            dependencies: [
                "ECMAScript",
                "JavaScriptKit",
                .product(name: "JavaScriptEventLoop", package: "JavaScriptKit"),
                .product(name: "JavaScriptBigIntSupport", package: "JavaScriptKit"),
            ]
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
            name: "WebAPIKitTests",
            dependencies: ["WebAPIKit"]
        ),
    ]
)
