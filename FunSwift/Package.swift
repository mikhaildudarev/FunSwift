// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FunSwift",
    products: [
        .library(
            name: "FunSwift",
            targets: [
                "Operators",
                "Functions"
            ]
        )
    ],
    targets: [
        .target(name: "Operators"),
        .target(name: "Functions"),
        .target(name: "TestHelpers", path: "Tests/Helpers"),
        .testTarget(name: "OperatorsTests", dependencies: ["Operators", "TestHelpers"]),
        .testTarget(name: "FunctionsTests", dependencies: ["Functions", "TestHelpers"])
    ]
)
