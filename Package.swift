// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PDPTestLibrary",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
    ], products: [
        .library(
            name: "PDPTestLibrary",
            targets: ["PDPTestLibrary"]),
    ],
    targets: [
        .target(
            name: "PDPTestLibrary")
    ]
)
