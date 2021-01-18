// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cpd2xcode",
    products: [
        .executable(name: "cpd2xcode", targets: ["cpd2xcode"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.3.0"))
    ],
    targets: [
        .target(name: "cpd2xcode", dependencies: [.product(name:"ArgumentParser", package: "swift-argument-parser")]),
        .testTarget(
            name: "cpd2xcodeTests", dependencies: ["cpd2xcode"])
    ]
)
