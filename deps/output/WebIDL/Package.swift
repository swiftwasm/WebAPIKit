// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebAPI",
    products: [
        .library(name: "WebAPI", targets: ["WebAPI"]),
    ],
    dependencies: [
        .package(name: "JavaScriptKit", url: "https://github.com/Unkaputtbar/JavaScriptKit.git", .branch("feature/webidl-support")),
        .package(name: "ECMAScript", url: "https://github.com/Unkaputtbar/ECMAScript.git", .branch("develop")),
    ],
    targets: [
        .target(name: "WebAPI", dependencies: ["JavaScriptKit", "ECMAScript"])
    ]
)