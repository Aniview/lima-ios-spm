// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "0.0.2"

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
            checksum: "d52c6f70ccf35d171fca4b9542bb3faf69442efb5321e19c1f23c2ea1f75dfb5"
        )
    ]
)
