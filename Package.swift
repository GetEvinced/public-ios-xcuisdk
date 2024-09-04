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
            url: "https://storage.googleapis.com/evinced-xcui-sdk/EvincedXCUISDK-1.22.1.zip",
            checksum: "2b80abcb0c96dffb59e7173a743522758e4fa6761ea99a6dea77ed330734d575")
    ]
)
