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
            url: "https://storage.googleapis.com/evinced-xcui-sdk/EvincedXCUISDK-1.25.0.zip",
            checksum: "e8155287b048820573fee0fd58f9625fc1fefdc1fec6bb3749d64bfe9e6d25df")
    ]
)
