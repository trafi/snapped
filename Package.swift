// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Snapped",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Snapped",
            targets: ["Snapped"]),
        .library(
            name: "SnapSpec",
            targets: ["SnapSpec"]),
    ],
    dependencies: [
        .package(
            name: "SnapshotTesting",
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.8.2"),
        .package(
            name: "Quick",
            url: "https://github.com/Quick/Quick.git", from: "3.0.0"),
    ],
    targets: [
        .target(name: "Snapped"),
        .target(
            name: "SnapSpec",
            dependencies: ["Snapped", "Quick", "SnapshotTesting"]),
    ]
)
