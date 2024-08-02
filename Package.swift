// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestOpti2D",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4),
        .visionOS(.v1)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestOpti2D",
            targets: ["TestOpti2D"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TestOpti2D"),
        .testTarget(
            name: "TestOpti2DTests",
            dependencies: ["TestOpti2D"]),
    ]
)
