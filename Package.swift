// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "0.0.4"

let package = Package(
    name: "Lima",
    platforms: [.iOS(.v14), .tvOS(.v15)],
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
            checksum: "c8a667d9da8bd7d330697d8abdfd2d98cb0ce9b8ba2dda048fb2b041051fd178"
        )
    ]
)
