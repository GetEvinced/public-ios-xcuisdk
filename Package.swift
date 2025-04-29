// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EvincedXCUISDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "EvincedXCUISDK",
            targets: ["EvincedXCUISDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "EvincedXCUISDK",
            url: "https://storage.googleapis.com/evinced-xcui-sdk/EvincedXCUISDK-1.26.3.zip",
            checksum: "204219442ff2e2529899962c8d2ea8bd779c70d5920ce838c7d6fd90131f659d")
    ]
)
