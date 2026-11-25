// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cryptography",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "Cryptography",
            targets: ["Cryptography"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-lco/Milieu.git", branch: "master"),
        .package(url: "https://github.com/swift-lco/Errors.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "Cryptography",
            dependencies: [
                .product(name: "Milieu", package: "Milieu"),
                .product(name: "Errors", package: "Errors"),
            ]
        ),
    ]
)
