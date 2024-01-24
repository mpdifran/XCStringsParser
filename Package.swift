// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "XCStringsParser",
    platforms: [
        .macOS(.v14),
        .iOS(.v16),
        .tvOS(.v16),
    ],
    products: [
        .library(
            name: "XCStringsParser",
            targets: ["XCStringsParser"]),
    ],
    dependencies: [
        .package(url: "git@github.com:mpdifran/AppFoundations.git", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "XCStringsParser",
            dependencies: ["AppFoundations"]),
        .testTarget(
            name: "XCStringsParserTests",
            dependencies: ["XCStringsParser"]),
    ]
)
