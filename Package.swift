// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "0.0.1"

let package = Package(
    name: "Lima",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Lima",
            targets: ["LimaTarget"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LimaTarget",
            dependencies: [
                .target(name: "Lima")
            ]
        ),
        .binaryTarget(
            name: "Lima",
            url: "https://github.com/Aniview/lima-ios-spm/releases/download/v\(artifactVersion)/Lima.zip",
            checksum: "cf68e8a69b866976640125ce3c44f4ccb4e5c30c0c8dc830bb059ef420b04678"
        )
    ]
)
