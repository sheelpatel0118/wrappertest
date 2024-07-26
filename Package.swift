// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DoorstepAIiOSWrapper",
    platforms: [
        .iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DoorstepAIiOSWrapper",
            targets: ["DoorstepAIiOSWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ikhvorost/ReactBridge.git", from: "1.0.0"),
//        .package(url: "https://github.com/sheelpatel0118/DoorstepAIiOSPackage.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DoorstepAIiOSWrapper",
            dependencies: [
                "ReactBridge",
//                "DoorstepAIiOSPackage"
            ]
        ),
        .testTarget(
            name: "DoorstepAIiOSWrapperTests",
            dependencies: ["DoorstepAIiOSWrapper"]),
    ]
)
